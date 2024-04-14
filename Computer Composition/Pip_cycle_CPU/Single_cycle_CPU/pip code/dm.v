`include "ctrl_encode_def.v"
module dm(clk, DMWr, addr, din, dout,dmtype);
   input          clk;
   input          DMWr;
   input  [6:0]   addr;
   input [2:0]dmtype;
   input  [31:0]  din;
   output  [31:0]  dout; 
   reg [31:0] dmem[127:0];
    wire myaddr = addr[6:2];
   always @(posedge clk)
      if (DMWr) begin
      case(dmtype) 
      `dm_word:begin 
        case(addr[1:0])
        2'b00:dmem[addr[6:2]] <= din;
        2'b01:begin
        dmem[addr[6:2]][31:8]<=din[23:0];
        dmem[addr[6:2]+1][7:0]<=din[31:24];
        end
        2'b10:begin
        dmem[addr[6:2]][31:16]<=din[15:0];
        dmem[addr[6:2]+1][15:0]<=din[31:16];
        end
        2'b11:begin
        dmem[addr[6:2]][31:24]<=din[7:0];
        dmem[addr[6:2]+1][23:0]<=din[31:8];
        end
        endcase
        end
       `dm_halfword:begin 
        case(addr[1:0])
        2'b00:dmem[addr[6:2]][15:0] <= din[15:0];
        2'b01:begin
        dmem[addr[6:2]][23:8]<=din[15:0];
        end
        2'b10:begin
        dmem[addr[6:2]][31:16]<=din[15:0];
        end
        2'b11:begin
        dmem[addr[6:2]][31:24]<=din[7:0];
        dmem[addr[6:2]+1][7:0]<=din[15:8];
        end 
        endcase
        end
        `dm_byte:
       begin 
        case(addr[1:0])
        2'b00:dmem[addr[6:2]][7:0] <= din[7:0];
        2'b01:begin
        dmem[addr[6:2]][15:8]<=din[7:0];
        end
        2'b10:begin
        dmem[addr[6:2]][23:16]<=din[7:0];
        end
        2'b11:begin
        dmem[addr[6:2]][31:24]<=din[7:0];
        end
        endcase
        end
        
      endcase
       $display("dmem[0x%8X] = 0x%8X,", addr >> 2, din); 
      end
      
// Define wires for the output
wire [31:0] dout;

// Extract relevant portions of the address
wire [6:2] addr_6_2 = addr[6:2];
wire [1:0] addr_1_0 = addr[1:0];
wire [31:0] dmem_addr = dmem[addr_6_2];

// Define wires for intermediate results
wire [31:0] upper_halfword;
wire [31:0] lower_halfword;
wire [31:0] upper_byte;
wire [31:0] lower_byte;

// Generate replicated bits for halfword and byte cases
wire [15:0] replicated_bit_15 = {16{dmem_addr[15]}};
wire [23:0] replicated_bit_23 = {24{dmem_addr[23]}};
wire [31:0] replicated_bit_31 = {24{dmem_addr[31]}};

// Assign outputs using regular expressions
assign dout = (dmtype == `dm_word) ? (
                    (addr_1_0 == 2'b00) ? dmem_addr :
                    (addr_1_0 == 2'b01) ? {dmem[addr_6_2+1][7:0], dmem_addr[31:8]} :
                    (addr_1_0 == 2'b10) ? {dmem[addr_6_2+1][15:0], dmem_addr[31:16]} :
                    {dmem[addr_6_2+1][23:0], dmem_addr[31:24]}
                ) : (dmtype == `dm_halfword) ? (
                    (addr_1_0 == 2'b00) ? {replicated_bit_15, dmem_addr[15:0]} :
                    (addr_1_0 == 2'b01) ? {replicated_bit_23, dmem_addr[23:8]} :
                    (addr_1_0 == 2'b10) ? {replicated_bit_31, dmem_addr[31:16]} :
                    {replicated_bit_15, dmem[addr_6_2+1][7:0], dmem_addr[31:24]}
                ) : (dmtype == `dm_byte_unsigned) ? (
                    (addr_1_0 == 2'b00) ? {24'b0, dmem_addr[7:0]} :
                    (addr_1_0 == 2'b01) ? {24'b0, dmem_addr[15:8]} :
                    (addr_1_0 == 2'b10) ? {24'b0, dmem_addr[23:16]} :
                    {24'b0, dmem_addr[31:24]}
                ) : (dmtype == `dm_halfword_unsigned) ? (
                    (addr_1_0 == 2'b00) ? {16'b0, dmem_addr[15:0]} :
                    (addr_1_0 == 2'b01) ? {16'b0, dmem_addr[23:8]} :
                    (addr_1_0 == 2'b10) ? {16'b0, dmem_addr[31:16]} :
                    {16'b0, dmem[addr_6_2+1][7:0], dmem_addr[31:24]}
                ) : (dmtype == `dm_byte) ? (
                    (addr_1_0 == 2'b00) ? {{24{dmem_addr[7]}}, dmem_addr[7:0]} :
                    (addr_1_0 == 2'b01) ? {replicated_bit_15, dmem_addr[15:8]} :
                    (addr_1_0 == 2'b10) ? {replicated_bit_23, dmem_addr[23:16]} :
                    {replicated_bit_31, dmem_addr[31:24]}
                ) : dout;


    
    
endmodule    
