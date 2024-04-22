`include "ctrl_encode_def.v"
// data memory
module dm(clk, DMWr, addr, DMType, din, dout);
   input          clk;
   input          DMWr;
   input  [8:0]   addr;
   input [2:0] DMType;
   input  [31:0]  din;
   output [31:0]  dout;
     
   reg [7:0] dmem[511:0];
   
   always @(posedge clk)
      if (DMWr) begin
        case(DMType)
            `dm_byte:
                begin
                    dmem[addr]<=din[7:0];
                    $display("dmem[0x%8X] = 0x%8X,", addr, din[7:0]); 
                end
            `dm_halfword:
                begin
                    dmem[addr]<=din[7:0];
                    dmem[addr+1]<=din[15:8];
                    $display("dmem[0x%8X] = 0x%8X,", addr, din[7:0]);
                    $display("dmem[0x%8X] = 0x%8X,", addr+1, din[15:8]);
                end
            `dm_word:
                begin
                    dmem[addr]<=din[7:0];
                    dmem[addr+1]<=din[15:8];
                    dmem[addr+2]<=din[23:16];
                    dmem[addr+3]<=din[31:24];
                    $display("dmem[0x%8X] = 0x%8X,", addr, din[7:0]);
                    $display("dmem[0x%8X] = 0x%8X,", addr+1, din[15:8]);
                    $display("dmem[0x%8X] = 0x%8X,", addr+2, din[23:16]);
                    $display("dmem[0x%8X] = 0x%8X,", addr++3, din[31:24]);
                end
        endcase
//         dmem[addr[8:2]] <= din;
      end
   
   reg [31:0] dout_reg;
   always@(*)
        case(DMType)
            `dm_byte:dout_reg={{24{dmem[addr][7]}},dmem[addr]};
            `dm_halfword:dout_reg={{16{dmem[addr+1][7]}},dmem[addr+1],dmem[addr]};
            `dm_word:dout_reg={dmem[addr+3],dmem[addr+2],dmem[addr+1],dmem[addr]};
            `dm_byte_unsigned: dout_reg={{24'b0}, dmem[addr]};
            `dm_halfword_unsigned: dout_reg = {{16'b0}, dmem[addr+1], dmem[addr]};
        endcase
   assign dout=dout_reg;
//   assign dout = dmem[addr[8:2]];
    
endmodule