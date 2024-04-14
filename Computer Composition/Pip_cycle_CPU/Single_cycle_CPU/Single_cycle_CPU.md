

## Sccomp

```verilog
module sccomp(clk, rstn, reg_sel, reg_data);
   input          clk;
   input          rstn;
   input [4:0]    reg_sel;
   output [31:0]  reg_data;
   
    
    
   wire [31:0]    instr;
   wire [31:0]    PC;
   wire           MemWrite;
   wire [31:0]    dm_addr, dm_din, dm_dout;
   
   wire rst = ~rstn;
       
  // instantiation of single-cycle CPU   
   SCPU U_SCPU(
         .clk(clk),                 // input:  cpu clock
         .reset(rst),                 // input:  reset
         .inst_in(instr),             // input:  instruction
         .Data_in(dm_dout),        // input:  data to cpu  
         .mem_w(MemWrite),       // output: memory write signal
         .PC_out(PC),                   // output: PC
         .Addr_out(dm_addr),          // output: address from cpu to memory
         .Data_out(dm_din),        // output: data from cpu to memory
         .reg_sel(reg_sel),         // input:  register selection
         .reg_data(reg_data)        // output: register data
         );
         
  // instantiation of data memory  
   dm    U_DM(
         .clk(clk),           // input:  cpu clock
         .DMWr(MemWrite),     // input:  ram write
         .addr(dm_addr[8:2]), // input:  ram address
         .din(dm_din),        // input:  data to ram
         .dout(dm_dout)       // output: data from ram
         );
         
  // instantiation of intruction memory (used for simulation)
   im    U_IM ( 
      .addr(PC[8:2]),     // input:  rom address
      .dout(instr)        // output: instruction
   );
        
endmodule


```

## U_DM

```verilog

// data memory
module dm(clk, DMWr, addr, din, dout);
   input          clk;
   input          DMWr;
   input  [8:2]   addr;
   input  [31:0]  din;
   output [31:0]  dout;
     
   reg [31:0] dmem[127:0];
   
   always @(posedge clk)
      if (DMWr) begin
         dmem[addr[8:2]] <= din;
        $display("dmem[0x%8X] = 0x%8X,", addr << 2, din); 
      end
   
   assign dout = dmem[addr[8:2]];
    
endmodule    

```

## U_IM

```verilog

// instruction memory
module im(input  [8:2]  addr,
            output [31:0] dout );

  reg  [31:0] ROM[127:0];


  assign dout = ROM[addr]; // word aligned
endmodule  

```

## SCPU

```verilog
`include "ctrl_encode_def.v"
module SCPU(
    input      clk,            // clock
    input      reset,          // reset
    input [31:0]  inst_in,     // instruction
    input [31:0]  Data_in,     // data from data memory
   
    output    mem_w,          // output: memory write signal
    output [31:0] PC_out,     // PC address
      // memory write
    output [31:0] Addr_out,   // ALU output
    output [31:0] Data_out,// data to data memory

    input  [4:0] reg_sel,    // register selection (for debug use)
    output [31:0] reg_data  // selected register data (for debug use)
//output [2:0] DMType
);
    
    
    
    wire        RegWrite;    // control signal to register write
    wire [5:0]       EXTOp;       // control signal to signed extension
    wire [4:0]  ALUOp;       // ALU opertion
    wire [2:0]  NPCOp;       // next PC operation

    wire [1:0]  WDSel;       // (register) write data selection
    wire [1:0]  GPRSel;      // general purpose register selection
   
    wire        ALUSrc;      // ALU source for A
    wire        Zero;        // ALU ouput zero

    wire [31:0] NPC;         // next PC

    wire [4:0]  rs1;          // rs
    wire [4:0]  rs2;          // rt
    wire [4:0]  rd;          // rd
    wire [6:0]  Op;          // opcode
    wire [6:0]  Funct7;       // funct7
    wire [2:0]  Funct3;       // funct3
    wire [11:0] Imm12;       // 12-bit immediate
    wire [31:0] Imm32;       // 32-bit immediate
    wire [19:0] IMM;         // 20-bit immediate (address)
    wire [4:0]  A3;          // register address for write
    reg [31:0] WD;          // register write data
    wire [31:0] RD1,RD2;         // register data specified by rs
    wire [31:0] B;           // operator for ALU B
	
	wire [4:0] iimm_shamt;
	wire [11:0] iimm,simm,bimm;
	wire [19:0] uimm,jimm;
	wire [31:0] immout;
wire[31:0] aluout;
assign Addr_out=aluout;
	assign B = (ALUSrc) ? immout : RD2;
	assign Data_out = RD2;
	
	assign iimm_shamt=inst_in[24:20];
	assign iimm=inst_in[31:20];
	assign simm={inst_in[31:25],inst_in[11:7]};
	assign bimm={inst_in[31],inst_in[7],inst_in[30:25],inst_in[11:8]};
	assign uimm=inst_in[31:12];
	assign jimm={inst_in[31],inst_in[19:12],inst_in[20],inst_in[30:21]};
   
    assign Op = inst_in[6:0];  // instruction
    assign Funct7 = inst_in[31:25]; // funct7
    assign Funct3 = inst_in[14:12]; // funct3
    assign rs1 = inst_in[19:15];  // rs1
    assign rs2 = inst_in[24:20];  // rs2
    assign rd = inst_in[11:7];  // rd
    assign Imm12 = inst_in[31:20];// 12-bit immediate
    assign IMM = inst_in[31:12];  // 20-bit immediate
   
   // instantiation of control unit
	ctrl U_ctrl(
		.Op(Op), .Funct7(Funct7), .Funct3(Funct3), .Zero(Zero), 
		.RegWrite(RegWrite), .MemWrite(mem_w),
		.EXTOp(EXTOp), .ALUOp(ALUOp), .NPCOp(NPCOp), 
		.ALUSrc(ALUSrc), .GPRSel(GPRSel), .WDSel(WDSel)
	);
 // instantiation of pc unit
	PC U_PC(.clk(clk), .rst(reset), .NPC(NPC), .PC(PC_out) );
	NPC U_NPC(.PC(PC_out), .NPCOp(NPCOp), .IMM(immout), .NPC(NPC), .aluout(aluout));
	EXT U_EXT(
		.iimm_shamt(iimm_shamt), .iimm(iimm), .simm(simm), .bimm(bimm),
		.uimm(uimm), .jimm(jimm),
		.EXTOp(EXTOp), .immout(immout)
	);
	RF U_RF(
		.clk(clk), .rst(reset),
		.RFWr(RegWrite), 
		.A1(rs1), .A2(rs2), .A3(rd), 
		.WD(WD), 
		.RD1(RD1), .RD2(RD2)
		//.reg_sel(reg_sel),
		//.reg_data(reg_data)
	);
// instantiation of alu unit
	alu U_alu(.A(RD1), .B(B), .ALUOp(ALUOp), .C(aluout), .Zero(Zero), .PC(PC_out));

//please connnect the CPU by yourself
always @*
begin
	case(WDSel)
		`WDSel_FromALU: WD<=aluout;
		`WDSel_FromMEM: WD<=Data_in;
		`WDSel_FromPC: WD<=PC_out+4;
	endcase
end


endmodule
```

### U_CTRL

```verilog
// `include "ctrl_encode_def.v"

//123
module ctrl(Op, Funct7, Funct3, Zero, 
            RegWrite, MemWrite,
            EXTOp, ALUOp, NPCOp, 
            ALUSrc, GPRSel, WDSel,DMType
            );
            
   input  [6:0] Op;       // opcode
   input  [6:0] Funct7;    // funct7
   input  [2:0] Funct3;    // funct3
   input        Zero;
   
   output       RegWrite; // control signal for register write
   output       MemWrite; // control signal for memory write
   output [5:0] EXTOp;    // control signal to signed extension
   output [4:0] ALUOp;    // ALU opertion
   output [2:0] NPCOp;    // next pc operation
   output       ALUSrc;   // ALU source for A
	output [2:0] DMType;
   output [1:0] GPRSel;   // general purpose register selection
   output [1:0] WDSel;    // (register) write data selection
   
  // r format
    wire rtype  = ~Op[6]&Op[5]&Op[4]&~Op[3]&~Op[2]&Op[1]&Op[0]; //0110011
    wire i_add  = rtype& ~Funct7[6]&~Funct7[5]&~Funct7[4]&~Funct7[3]&~Funct7[2]&~Funct7[1]&~Funct7[0]&~Funct3[2]&~Funct3[1]&~Funct3[0]; // add 0000000 000
    wire i_sub  = rtype& ~Funct7[6]& Funct7[5]&~Funct7[4]&~Funct7[3]&~Funct7[2]&~Funct7[1]&~Funct7[0]&~Funct3[2]&~Funct3[1]&~Funct3[0]; // sub 0100000 000
    wire i_or   = rtype& ~Funct7[6]&~Funct7[5]&~Funct7[4]&~Funct7[3]&~Funct7[2]&~Funct7[1]&~Funct7[0]& Funct3[2]& Funct3[1]&~Funct3[0]; // or 0000000 110
    wire i_and  = rtype& ~Funct7[6]&~Funct7[5]&~Funct7[4]&~Funct7[3]&~Funct7[2]&~Funct7[1]&~Funct7[0]& Funct3[2]& Funct3[1]& Funct3[0]; // and 0000000 111
    
 

 // i format
   wire itype_l  = ~Op[6]&~Op[5]&~Op[4]&~Op[3]&~Op[2]&Op[1]&Op[0]; //0000011

// i format
    wire itype_r  = ~Op[6]&~Op[5]&Op[4]&~Op[3]&~Op[2]&Op[1]&Op[0]; //0010011
    wire i_addi  =  itype_r& ~Funct3[2]& ~Funct3[1]& ~Funct3[0]; // addi 000
    wire i_ori  =  itype_r& Funct3[2]& Funct3[1]&~Funct3[0]; // ori 110
	wire i_andi = itype_r&Funct3[2]&Funct3[1]&Funct3[0];// andi 111
 //jalr
	wire i_jalr =Op[6]&Op[5]&~Op[4]&~Op[3]&Op[2]&Op[1]&Op[0];//jalr 1100111

  // s format
   wire stype  = ~Op[6]&Op[5]&~Op[4]&~Op[3]&~Op[2]&Op[1]&Op[0];//0100011
   wire i_sw   =  stype& ~Funct3[2]& Funct3[1]&~Funct3[0]; // sw 010

  // sb format
   wire sbtype  = Op[6]&Op[5]&~Op[4]&~Op[3]&~Op[2]&Op[1]&Op[0];//1100011
   wire i_beq  = sbtype& ~Funct3[2]& ~Funct3[1]&~Funct3[0]; // beq
	
 // j format
   wire i_jal  = Op[6]& Op[5]&~Op[4]& Op[3]& Op[2]& Op[1]& Op[0];  // jal 1101111

  // generate control signals
 assign RegWrite   = rtype | itype_r | i_jalr | i_jal; // register write
  assign MemWrite   = stype;                           // memory write
  assign ALUSrc     = itype_r | stype | i_jal | i_jalr;   // ALU B is from instruction immediate

  // signed extension
  // EXT_CTRL_ITYPE_SHAMT 6'b100000
  // EXT_CTRL_ITYPE	      6'b010000
  // EXT_CTRL_STYPE	      6'b001000
  // EXT_CTRL_BTYPE	      6'b000100
  // EXT_CTRL_UTYPE	      6'b000010
  // EXT_CTRL_JTYPE	      6'b000001
  assign EXTOp[5] = 0;
  assign EXTOp[4]    =  i_ori | i_andi | i_jalr;  
  assign EXTOp[3]    = stype; 
  assign EXTOp[2]    = sbtype; 
  assign EXTOp[1]    = 0;   
  assign EXTOp[0]    = i_jal;         


  
  
  // WDSel_FromALU 2'b00
  // WDSel_FromMEM 2'b01
  // WDSel_FromPC  2'b10 
  assign WDSel[0] = itype_l;
  assign WDSel[1] = i_jal | i_jalr;

  // NPC_PLUS4   3'b000
  // NPC_BRANCH  3'b001
  // NPC_JUMP    3'b010
  // NPC_JALR	3'b100
  assign NPCOp[0] = sbtype & Zero;
  assign NPCOp[1] = i_jal;
	assign NPCOp[2]=i_jalr;
  

 
	assign ALUOp[0] = itype_l|stype|i_addi|i_ori|i_add|i_or;
	assign ALUOp[1] = i_jalr|itype_l|stype|i_addi|i_add|i_and;
	assign ALUOp[2] = i_andi|i_and|i_ori|i_or|i_beq|i_sub;
	assign ALUOp[3] = i_andi|i_and|i_ori|i_or;
	assign ALUOp[4] = 0;

endmodule

```

### U_PC

```verilog
module PC( clk, rst, NPC, PC );

  input              clk;
  input              rst;
  input       [31:0] NPC;
  output reg  [31:0] PC;

  always @(posedge clk, posedge rst)
    if (rst) 
      PC <= 32'h0000_0000;
//      PC <= 32'h0000_3000;
    else
      PC <= NPC;
      
endmodule


```



### U_NPC

```verilog
`include "ctrl_encode_def.v"

module NPC(PC, NPCOp, IMM, NPC,aluout);  // next pc module
    
   input  [31:0] PC;        // pc
   input  [2:0]  NPCOp;     // next pc operation
   input  [31:0] IMM;       // immediate
	input [31:0] aluout;
   output reg [31:0] NPC;   // next pc
   
   wire [31:0] PCPLUS4;
   
   assign PCPLUS4 = PC + 4; // pc + 4
   
   always @(*) begin
      case (NPCOp)
          `NPC_PLUS4:  NPC = PCPLUS4;
          `NPC_BRANCH: NPC = PC+IMM;
          `NPC_JUMP:   NPC = PC+IMM;
		  `NPC_JALR:	NPC =aluout;
          default:     NPC = PCPLUS4;
      endcase
   end // end always
   
endmodule

```



### U_EXT

```verilog
`include "ctrl_encode_def.v"
module EXT( 
	input [4:0] iimm_shamt,
    	input	[11:0]			iimm, //instr[31:20], 12 bits
	input	[11:0]			simm, //instr[31:25, 11:7], 12 bits
	input	[11:0]			bimm, //instrD[31], instrD[7], instrD[30:25], instrD[11:8], 12 bits
	input	[19:0]			uimm,
	input	[19:0]			jimm,
	input	[5:0]			EXTOp,

	output	reg [31:0] 	       immout);
   
always  @(*)
	 case (EXTOp)
		`EXT_CTRL_ITYPE_SHAMT:   immout<={27'b0,iimm_shamt[4:0]};
		`EXT_CTRL_ITYPE:	immout <= {{{32-12}{iimm[11]}}, iimm[11:0]};
		`EXT_CTRL_STYPE:	immout <= {{{32-12}{simm[11]}}, simm[11:0]};
		`EXT_CTRL_BTYPE:        immout <= {{{32-13}{bimm[11]}}, bimm[11:0], 1'b0};
		`EXT_CTRL_UTYPE:	immout <= {uimm[19:0], 12'b0}; //???????????12??0
		`EXT_CTRL_JTYPE:	immout <= {{{32-21}{jimm[19]}}, jimm[19:0], 1'b0};
		default:	        immout <= 32'b0;
	 endcase

       
endmodule

```



### U_RF

```verilog

  module RF(   input         clk, 
               input         rst,
               input         RFWr, 
               input  [4:0]  A1, A2, A3, 
               input  [31:0] WD, 
               output [31:0] RD1, RD2);

  reg [31:0] rf[31:0];

  integer i;

  always @(posedge clk, posedge rst)
    if (rst) begin    //  reset
      for (i=1; i<32; i=i+1)
        rf[i] <= 0; //  i;
    end
      
    else 
      if (RFWr) begin
        rf[A3] <= WD;
//        $display("r[00-07]=0x%8X, 0x%8X, 0x%8X, 0x%8X, 0x%8X, 0x%8X, 0x%8X, 0x%8X", 0, rf[1], rf[2], rf[3], rf[4], rf[5], rf[6], rf[7]);
//        $display("r[08-15]=0x%8X, 0x%8X, 0x%8X, 0x%8X, 0x%8X, 0x%8X, 0x%8X, 0x%8X", rf[8], rf[9], rf[10], rf[11], rf[12], rf[13], rf[14], rf[15]);
//        $display("r[16-23]=0x%8X, 0x%8X, 0x%8X, 0x%8X, 0x%8X, 0x%8X, 0x%8X, 0x%8X", rf[16], rf[17], rf[18], rf[19], rf[20], rf[21], rf[22], rf[23]);
//        $display("r[24-31]=0x%8X, 0x%8X, 0x%8X, 0x%8X, 0x%8X, 0x%8X, 0x%8X, 0x%8X", rf[24], rf[25], rf[26], rf[27], rf[28], rf[29], rf[30], rf[31]);
//        $display("r[%2d] = 0x%8X,", A3, WD);
      end
    

  assign RD1 = (A1 != 0) ? rf[A1] : 0;
  assign RD2 = (A2 != 0) ? rf[A2] : 0;
  //assign reg_data = (reg_sel != 0) ? rf[reg_sel] : 0; 

endmodule 

```



### U_ALU

```verilog
`include "ctrl_encode_def.v"

module alu(A, B, ALUOp, C, Zero,PC);
           
   input  signed [31:0] A, B;
   input         [4:0]  ALUOp;
	input [31:0] PC;
   output signed [31:0] C;
   output Zero;
   
   reg [31:0] C;
   integer    i;
       
   always @( * ) begin
      case ( ALUOp )
`ALUOp_nop:C=A;
`ALUOp_lui:C=B;
`ALUOp_auipc:C=PC+B;
`ALUOp_add:C=A+B;
`ALUOp_sub:C=A-B;
`ALUOp_bne:C={31'b0,(A==B)};
`ALUOp_blt:C={31'b0,(A>=B)};
`ALUOp_bge:C={31'b0,(A<B)};
`ALUOp_bltu:C={31'b0,($unsigned(A)>=$unsigned(B))};
`ALUOp_bgeu:C={31'b0,($unsigned(A)<$unsigned(B))};
`ALUOp_slt:C={31'b0,(A<B)};
`ALUOp_sltu:C={31'b0,($unsigned(A)<$unsigned(B))};
`ALUOp_xor:C=A^B;
`ALUOp_or:C=A|B;
`ALUOp_and:C=A&B;
`ALUOp_sll:C=A<<B;
`ALUOp_srl:C=A>>B;
`ALUOp_sra:C=A>>>B;
      endcase
   end // end always
   
   assign Zero = (C == 32'b0);

endmodule
    

```

## test bench

```verilog

// testbench for simulation
module sccomp_tb();
    
   reg  clk, rstn;
   reg  [4:0] reg_sel;
   wire [31:0] reg_data;
    
// instantiation of sccomp    
   sccomp U_SCCOMP(
      .clk(clk), .rstn(rstn), .reg_sel(reg_sel), .reg_data(reg_data) 
   );

  	integer foutput;
  	integer counter = 0;
   
   initial begin
      $readmemh( "Test_8_Instr.dat" , U_SCCOMP.U_IM.ROM); // load instructions into instruction memory
//    $monitor("PC = 0x%8X, instr = 0x%8X", U_SCCOMP.PC, U_SCCOMP.instr); // used for debug
      foutput = $fopen("results.txt");
      clk = 1;
      rstn = 1;
      #5 ;
      rstn = 0;
      #20 ;
      rstn = 1;
      #1000 ;
      reg_sel = 7;
   end
   
    always begin
    #(50) clk = ~clk;
	   
    if (clk == 1'b1) begin
      if ((counter == 1000) || (U_SCCOMP.U_SCPU.PC_out=== 32'hxxxxxxxx)) begin
        $fclose(foutput);
        $stop;
      end
      else begin
        if (U_SCCOMP.PC == 32'h00000048) begin
          counter = counter + 1;
          $fdisplay(foutput, "pc:\t %h", U_SCCOMP.PC);
          $fdisplay(foutput, "instr:\t\t %h", U_SCCOMP.instr);
          $fdisplay(foutput, "rf00-03:\t %h %h %h %h", 0, U_SCCOMP.U_SCPU.U_RF.rf[1], U_SCCOMP.U_SCPU.U_RF.rf[2], U_SCCOMP.U_SCPU.U_RF.rf[3]);
          $fdisplay(foutput, "rf04-07:\t %h %h %h %h", U_SCCOMP.U_SCPU.U_RF.rf[4], U_SCCOMP.U_SCPU.U_RF.rf[5], U_SCCOMP.U_SCPU.U_RF.rf[6], U_SCCOMP.U_SCPU.U_RF.rf[7]);
          $fdisplay(foutput, "rf08-11:\t %h %h %h %h", U_SCCOMP.U_SCPU.U_RF.rf[8], U_SCCOMP.U_SCPU.U_RF.rf[9], U_SCCOMP.U_SCPU.U_RF.rf[10], U_SCCOMP.U_SCPU.U_RF.rf[11]);
          $fdisplay(foutput, "rf12-15:\t %h %h %h %h", U_SCCOMP.U_SCPU.U_RF.rf[12], U_SCCOMP.U_SCPU.U_RF.rf[13], U_SCCOMP.U_SCPU.U_RF.rf[14], U_SCCOMP.U_SCPU.U_RF.rf[15]);
          $fdisplay(foutput, "rf16-19:\t %h %h %h %h", U_SCCOMP.U_SCPU.U_RF.rf[16], U_SCCOMP.U_SCPU.U_RF.rf[17], U_SCCOMP.U_SCPU.U_RF.rf[18], U_SCCOMP.U_SCPU.U_RF.rf[19]);
          $fdisplay(foutput, "rf20-23:\t %h %h %h %h", U_SCCOMP.U_SCPU.U_RF.rf[20], U_SCCOMP.U_SCPU.U_RF.rf[21], U_SCCOMP.U_SCPU.U_RF.rf[22], U_SCCOMP.U_SCPU.U_RF.rf[23]);
          $fdisplay(foutput, "rf24-27:\t %h %h %h %h", U_SCCOMP.U_SCPU.U_RF.rf[24], U_SCCOMP.U_SCPU.U_RF.rf[25], U_SCCOMP.U_SCPU.U_RF.rf[26], U_SCCOMP.U_SCPU.U_RF.rf[27]);
          $fdisplay(foutput, "rf28-31:\t %h %h %h %h", U_SCCOMP.U_SCPU.U_RF.rf[28], U_SCCOMP.U_SCPU.U_RF.rf[29], U_SCCOMP.U_SCPU.U_RF.rf[30], U_SCCOMP.U_SCPU.U_RF.rf[31]);
          //$fdisplay(foutput, "hi lo:\t %h %h", U_SCCOMP.U_SCPU.U_RF.rf.hi, U_SCCOMP.U_SCPU.U_RF.rf.lo);
          $fclose(foutput);
          $stop;
        end
        else begin
          counter = counter + 1;
//          $display("pc: %h", U_SCCOMP.U_SCPU.PC);
//          $display("instr: %h", U_SCCOMP.U_SCPU.instr);
        end
      end
    end
  end //end always
   
endmodule

```

## 指令集

```verilog
assign RegWrite   = rtype | itype_r | i_jalr | i_jal; // register write
assign MemWrite   = stype;                           // memory write
assign ALUSrc     = itype_r | stype | i_jal | i_jalr;   // ALU B is from instruction immediate
assign ALUOp[0] = itype_l|stype|i_addi|i_ori|i_add|i_or;
assign ALUOp[1] = i_jalr|itype_l|stype|i_addi|i_add|i_and;
	//assign ALUOp[2] = i_andi|i_and|i_ori|i_or|i_beq|i_sub;
	//assign ALUOp[3] = i_andi|i_and|i_ori|i_or;
assign ALUOp[2] = i_and|i_ori|i_or|i_beq|i_sub;
assign ALUOp[3] = i_and|i_ori|i_or;    
assign ALUOp[4] = 0;

`define ALUOp_nop 5'b00000
`define ALUOp_lui 5'b00001
`define ALUOp_auipc 5'b00010
`define ALUOp_add 5'b00011
`define ALUOp_sub 5'b00100
`define ALUOp_bne 5'b00101
`define ALUOp_blt 5'b00110
`define ALUOp_bge 5'b00111
`define ALUOp_bltu 5'b01000
`define ALUOp_bgeu 5'b01001
`define ALUOp_slt 5'b01010
`define ALUOp_sltu 5'b01011
`define ALUOp_xor 5'b01100
`define ALUOp_or 5'b01101
`define ALUOp_and 5'b01110
`define ALUOp_sll 5'b01111
`define ALUOp_srl 5'b10000
`define ALUOp_sra 5'b10001
```





1. 加指令
2. 新增ALUOp码
3. 将opcode，fun3,fun7添加
4. 由以上三者添加ALUOp，Extop，
5. 增加ALU逻辑

## 测试

1

```verilog
.text
	addi x1,x0,0x123
    ori x2,x0,0x456
    add x3,x1,x2
    sub x4,x2,x1
    and x5,x1,x2
    or x6,x1,x2
    andi x7,x1,0x789
    xor x8,x1,x2
    xori x9,x1,0x789
    addi x3,x0,4
    addi x4,x0,-4
    sra x5,x1,x3
    sll x6,x1,x3
    srai x7,x2,1
    slli x8,x2,2
    srl x9,x4,x3
    srai x10,x4,2
    
	
	# Never return

0x12300093
0x45606113
0x002081B3
0x40110233
0x0020F2B3
0x0020E333
0x7890F393
0x0020C433
0x7890C493
0x00400193
0xFFC00213
0x4030D2B3
0x00309333
0x40115393
0x00211413
0x003254B3
0x40225513

```



2

```verilog
.text
	addi x1,x0,0x123
    addi x2,x0,0x456
    addi x3,x0,-1
    slt x4,x1,x2
    sltu x5,x1,x3
    slti x6,x2,0x789
    sltiu x7,x2,-1
    lui x8,0x234
    auipc x9,0x345
    sw x8,0(x0)
    sh x8,4(x0)
    sb x2,8(x0)
    lw x3,0(x0)
    lh x4,0(x0)
    lb x5,8(x0)
    addi x6,x0,-4
    sw x6,0(x0)
    lbu x7,0(x0)
    lhu x8,0(x0)

	# Never return
0x12300093
0x45600113
0xFFF00193
0x0020A233
0x0030B2B3
0x78912313
0xFFF13393
0x00234437
0x00345497
0x00802023
0x00801223
0x00200423
0x00002183
0x00001203
0x00800283
0xFFC00313
0x00602023
0x00004383
0x00005403

```

3

```verilog
.text
	addi x1,x0,1
    addi x2,x0,2
    bne x1,x2,flag1
    addi x5,x0,1
    flag1:
    addi x1,x1,1
    beq x1,x2,flag2
    addi x5,x0,1
    flag2:
    addi x2,x2,1
    blt x1,x2,flag3
    addi x5,x0,1
    flag3:
    addi x3,x0,-1
    bge x1,x3,flag4
    addi x5,x0,1
    flag4:
    addi x1,x1,1
    bltu x1,x3,flag5
    addi x5,x0,1
    flag5:
    addi x1,x1,1
    bgeu x3,x1,flag6
    addi x5,x0,1
    flag6:
    addi x1,x1,1
    addi x1 x0 1
    jal x2,flag
    addi x1 x0 2
    flag:
    addi x1 x0 3
    jalr x3,x0,0x68
    addi x1 x0 4
    addi x1 x0 5
    
    
	# Never return
	
	0x00100093
0x00100093
0x00200113
0x00209463
0x00100293
0x00108093
0x00208463
0x00100293
0x00110113
0x0020C463
0x00100293
0xFFF00193
0x0030D463
0x00100293
0x00108093
0x0030E463
0x00100293
0x00108093
0x0011F463
0x00100293
0x00108093
0x00100093
0x0080016F
0x00200093
0x00300093
0x068001E7
0x00400093
0x00500093


```

