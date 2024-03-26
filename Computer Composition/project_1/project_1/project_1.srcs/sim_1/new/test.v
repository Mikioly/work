module test_tb();
reg clk, rstn;
reg[15:0] sw_i;
wire [15:0] led_o;
integer foutput, counter;
wire[7:0] disp_an_o;
wire[7:0] disp_seg_o;
wire clk_div;
wire clk_wire;

assign clk_wire = clk;

sccomp u_cpu(
    .clk(clk_wire),
    .sw_i(sw_i),
    .rstn(rstn),
    .disp_an_o(disp_an_o),
    .disp_seg_o(disp_seg_o)
);

initial begin 
sw_i = 16'b0100_0000_0000_0000;
clk = 1;
rstn = 0;
counter = 0;
#5;
    clk = ~clk;
#20;
   rstn = ~rstn;
  

end
assign clk_div = u_cpu.Clk_CPU;

always 
    begin 
    
        #5 clk = ~clk;
        $display("disp_an_o", disp_an_o);
        $display("disp_seg_o", disp_seg_o);
        $display("romaddr",u_cpu.rom_addr);  
        
     end


endmodule