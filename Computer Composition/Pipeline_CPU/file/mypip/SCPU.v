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
    output [31:0] reg_data,  // selected register data (for debug use)
    output [2:0] DMType
);
    wire        RegWrite;    // control signal to register write
    wire [5:0]  EXTOp;       // control signal to signed extension
    wire [4:0]  ALUOp;       // ALU opertion
    wire [2:0]  NPCOp;       // next PC operation

    wire [1:0]  WDSel;       // (register) write data selection
    wire [1:0]  GPRSel;      // general purpose register selection
    wire        ALUSrc;      // ALU source for A
    wire        Zero;        // ALU ouput zero

    wire [31:0] NPC;         // next PC
    wire [4:0]  rs1;          // rs
    wire [4:0]  rs2;          // rt
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

wire IF_ID_write_enable;
wire EX_MemRead;
wire [4:0]EX_rd;
wire [4:0]ID_rs1;
wire [4:0]ID_rs2;
wire jump_flush;

//wire jump_write_enable;
HazardDetectionUnit Hazard(.EX_MemRead(EX_MemRead),.ID_rs1(rs1),.ID_rs2(rs2),.EX_rd(EX_rd),.stall_signal(IF_ID_write_enable));
GRE_array IF_ID (.clk(clk),.Rst(reset),.write_enable(~IF_ID_write_enable),.flush(IF_ID_write_enable|jump_flush),.in(),.out());
GRE_array ID_EX (.clk(clk),.Rst(reset),.write_enable(1'b1),.flush(IF_ID_write_enable|jump_flush),.in(),.out());
GRE_array EX_MEM(.clk(clk),.Rst(reset),.write_enable(1'b1),.flush(jump_flush),.in(),.out());
GRE_array MEM_WB(.clk(clk),.Rst(reset),.write_enable(1'b1),.flush(0),.in(),.out());

// 接受EX/MEM输出
PC U_PC(.clk(clk), .rst(reset), .NPC(NPC), .PC(PC_out) );
	



        //IF阶段
//assign IF_ID.flush = 1'b0;
//assign IF_ID.write_enable = Hazard.IF_ID_write_enable;
assign IF_ID.in[31:0] =inst_in;
assign IF_ID.in[63:32] = U_NPC.PCPLUS4;
assign IF_ID.in[299:64] = 0;
        //ID阶段
	wire [31:0] ID_instruction;
    wire [31:0] ID_pcplus4;
    assign ID_instruction = IF_ID.out[31:0];
    assign ID_pcplus4 = IF_ID.out[63:32];
	assign iimm_shamt=ID_instruction[24:20];
	assign iimm=ID_instruction[31:20];
	assign simm={ID_instruction[31:25],ID_instruction[11:7]};
	assign bimm={ID_instruction[31],ID_instruction[7],ID_instruction[30:25],ID_instruction[11:8]};
	assign uimm=ID_instruction[31:12];
	assign jimm={ID_instruction[31],ID_instruction[19:12],ID_instruction[20],ID_instruction[30:21]}; 
    assign Op = ID_instruction[6:0];  // instruction
    assign Funct7 = ID_instruction[31:25]; // funct7
    assign Funct3 = ID_instruction[14:12]; // funct3
    assign rs1 = ID_instruction[19:15];  // rs1
    assign rs2 = ID_instruction[24:20];  // rs2
    assign Imm12 = ID_instruction[31:20];// 12-bit immediate
    assign IMM = ID_instruction[31:12];  // 20-bit immediate
    wire EX_zero;
    wire MemWrite;
    wire [2:0]dmtype;
    wire MemRead;
ctrl U_ctrl(
		.Op(Op), .Funct7(Funct7), .Funct3(Funct3), .Zero(0), 
		.RegWrite(RegWrite), .MemWrite(MemWrite),
		.EXTOp(EXTOp), .ALUOp(ALUOp), .NPCOp(NPCOp), 
		.ALUSrc(ALUSrc), .WDSel(WDSel),.DMType(dmtype)
	);
   //RF用下降沿写数据，后半周期读
   //写入寄存器号和数据和zero来自mem/wb流水线寄存器；
   wire WB_regwrite;
   wire [4:0]WB_rd;
	RF U_RF(
		.clk(clk), .rst(reset),
		.RFWr(WB_regwrite), 
		.A1(rs1), .A2(rs2), .A3(WB_rd), 
		.WD(WD), 
		.RD1(RD1), .RD2(RD2)
	);
	EXT U_EXT(
		.iimm_shamt(iimm_shamt), .iimm(iimm), .simm(simm), .bimm(bimm),
		.uimm(uimm), .jimm(jimm),
		.EXTOp(EXTOp), .immout(immout)
	);
// 64'out + 32'RD1 +32'RD2 +32'immout +1'RegWrite +1'mem_w +3'NPCOp+ 5'ALUOp+ 1'ALUSrc+ 2'WDSel+ 3'DMtype
    wire [15:0] IFIDOp;
    assign IFIDOp = {RegWrite,MemWrite,NPCOp,ALUOp,ALUSrc,dmtype,WDSel};
    assign ID_EX.in[63:0] = IF_ID.out;
    assign ID_EX.in[95:64] = RD1;
    assign ID_EX.in[127:96] = RD2;
    assign ID_EX.in[159:128] = immout;
    assign ID_EX.in[175:160] = IFIDOp;
    assign ID_EX.in[299:176] = 0;

        //EX阶段
    wire [31:0]EX_PC = ID_EX.out[63:32]-4;
    wire [15:0]EX_OP = ID_EX.out[175:160];
    wire [4:0]EX_ALUOp = EX_OP[10:6];
    wire EX_ALUSrc = EX_OP[5];
    wire [31:0]EX_instruction = ID_EX.out[31:0];
    wire [6:0] EX_INSOp = EX_instruction[6:0];  
    assign  EX_MemRead  = ~EX_INSOp[6]&~EX_INSOp[5]&~EX_INSOp[4]&~EX_INSOp[3]&~EX_INSOp[2]&EX_INSOp[1]&EX_INSOp[0]; //0000011
    wire[4:0] EX_rs1 = EX_instruction[19:15];
    wire[4:0] EX_rs2 = EX_instruction[24:20];
    
    assign EX_rd = EX_instruction[11:7];
    wire [31:0]EX_immout = ID_EX.out[159:128]; 
    
    //rs1_ForwardSignal  00 EX_RD1 01:WB_rd   10:MEM_rd
    //rs1_ForwardSigna2  00 EX_RD2 01:WB_rd   10:MEM_rd
    wire [31:0]EX_RD1 = ID_EX.out[95:64];
    wire [31:0]EX_RD2 = ID_EX.out[127:96];
    wire [31:0] EX_A;
    wire [31:0] EX_B;
    wire [1:0] rs1_ForwardSignal;
    wire [1:0] rs2_ForwardSignal;
    wire [4:0] MEM_rd;
    wire[31:0] WB_RD1;
    wire[31:0] MEM_RD1;
    wire[31:0] WB_RD2;
    wire[31:0] MEM_RD2;
    reg [31:0]MEM_WD;//先写reg,可能有问题
assign EX_A = (
    rs1_ForwardSignal == 2'b00) ? EX_RD1 :
    (rs1_ForwardSignal == 2'b01) ? WD :
    (rs1_ForwardSignal == 2'b10) ? MEM_WD :
    32'hxxxx; // Default value if none of the conditions match

assign EX_B = (
    rs2_ForwardSignal == 2'b00) ? EX_RD2 :
    (rs2_ForwardSignal == 2'b01) ? WD:
    (rs2_ForwardSignal == 2'b10) ? MEM_WD :
    32'hxxxx; // Default value if none of the conditions match

    assign B = (EX_ALUSrc) ? EX_immout :EX_B;




alu U_alu(.A(EX_A), .B(B), .ALUOp(EX_ALUOp), .C(aluout), .Zero(EX_zero), .PC(EX_PC));
    assign EX_MEM.in[95:0] = ID_EX.out[95:0];
    assign EX_MEM.in[127:96] =EX_B;
    assign EX_MEM.in[175:128] = ID_EX.out[175:128];
    assign EX_MEM.in[207:176] = NPC;
    assign EX_MEM.in[239:208] = aluout;
    assign EX_MEM.in[240] = EX_zero;
        //MEM阶段
    wire [15:0]MEM_OP = EX_MEM.out[175:160];   
    wire [1:0]MEM_WDsel = MEM_OP[1:0];
    wire [31:0]MEM_DMtype = MEM_OP[4:2];
    wire [31:0]MEM_Addr =  EX_MEM.out[239:208];   
    wire MEM_mem_W=MEM_OP[14];
    wire [31:0]MEM_din = EX_MEM.out[127:96];
    wire MEM_zero = EX_MEM.out[240];
    wire [2:0] MEM_NpcOp = MEM_OP[13:11];
    wire MEM_RegWrite = MEM_OP[15];
    wire [31:0]MEM_immout = EX_MEM.out[159:128];
    wire [31:0]MEM_instruction = EX_MEM.out[31:0];
    wire [31:0] MEM_PCout = EX_MEM.out[63:32];
    assign MEM_RD1 = EX_MEM.out[95:64];
    assign MEM_RD2 = EX_MEM.out[127:96];
    assign MEM_rd = MEM_instruction[11:7];
    assign Addr_out = MEM_Addr;
    assign Data_out = MEM_din;
    assign  mem_w=  MEM_mem_W;
    assign DMType = MEM_DMtype;
    assign MEM_WB.in[240:0] = EX_MEM.out[240:0];
    assign MEM_WB.in[272:241]= Data_in;
    assign MEM_WB.in[299:273]= 0;
    always @*
begin
	case(MEM_WDsel)
		`WDSel_FromALU: MEM_WD<=MEM_Addr;
		`WDSel_FromMEM: MEM_WD<=Data_in;
		`WDSel_FromPC:  MEM_WD<=MEM_PCout;
	endcase
end
    wire [31:0]MEM_PC = MEM_WB.out[63:32];
    wire [31:0] pc;
    wire [6:0]MEM_Op = MEM_instruction[6:0];  // instruction
    wire [2:0]MEM_Funct3 = MEM_instruction[14:12]; // funct3
   wire sbtype  = MEM_Op[6]&MEM_Op[5]&~MEM_Op[4]&~MEM_Op[3]&~MEM_Op[2]&MEM_Op[1]&MEM_Op[0];//1100011
   wire isjump = (sbtype & MEM_zero)|MEM_NpcOp[1]|MEM_NpcOp[2];
   assign jump_flush = isjump;
   assign jump_write_enable = ~isjump;
   
   
    //假设分支不发生，如果跳转就用mem_pc + immout,同时清空ID/EX,EX/MA，IF读跳转后的PC
    //否则就用当前pcout
    assign pc = (isjump)?MEM_PC-4:PC_out;
    wire[31:0] pip_pc;
    assign pip_pc = (IF_ID_write_enable)?pc-4:pc;
NPC U_NPC(.PC(pip_pc), .NPCOp(MEM_NpcOp&{1'b1,1'b1,isjump}), .IMM(MEM_immout), .NPC(NPC), .aluout(MEM_Addr));
        //WB阶段
    wire [15:0]WB_OP = MEM_WB.out[175:160];
    wire [1:0]WB_wdsel = WB_OP[1:0];
    wire [31:0]WB_aluout = MEM_WB.out[239:208];
    wire [31:0]WB_dmout = MEM_WB.out[272:241];
    wire [31:0]WB_PCout = MEM_WB.out[63:32];
    wire [31:0]WB_instr =  MEM_WB.out[31:0];
    assign WB_RD1 = MEM_WB.out[95:64];
    assign WB_RD2 = MEM_WB.out[127:96];
    assign WB_rd = WB_instr[11:7];  
    assign WB_regwrite = WB_OP[15];

always @*
begin
	case(WB_wdsel)
		`WDSel_FromALU: WD<=WB_aluout;
		`WDSel_FromMEM: WD<=WB_dmout;
		`WDSel_FromPC: WD<=WB_PCout;
	endcase
end


ForwardingUnit rs1_forward(
    .MEM_RegWrite(MEM_RegWrite), //EX/MEM RegWrite
    .MEM_rd(MEM_rd), //EX/MEM RegisterRd
    .WB_RegWrite(WB_regwrite), //MEM/WB RegWrite
    .WB_rd(WB_rd), //MEM/WB RegisterRd
    .EX_rs(EX_rs1), //EX/MEM RegisterRs1
    .ForwardSignal(rs1_ForwardSignal) //00: from reg    10:from mem   01: from WB_RD
    );
ForwardingUnit rs2_forward(
    .MEM_RegWrite(MEM_RegWrite), //EX/MEM RegWrite
    .MEM_rd(MEM_rd), //EX/MEM RegisterRd
    .WB_RegWrite(WB_regwrite), 
    .WB_rd(WB_rd), //MEM/WB RegisterRd
    .EX_rs(EX_rs2), //ID/EX RegisterRs2
    .ForwardSignal(rs2_ForwardSignal) //00: from reg    10:from mem   01: from WB_RD
    );


endmodule