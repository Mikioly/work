`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/21 19:26:44
// Design Name: 
// Module Name: sccomp
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sccomp(
    input clk,
    input rstn,
    input [4:0] btn_i,
    input [15:0] sw_i,
    output [7:0] disp_an_o,
    output [7:0] disp_seg_o,
    output [15:0] led_o
    );
    wire rst=~rstn;
    wire [4:0] BTN;
    wire [15:0] SW;
    wire Clk_CPU;
    wire IO_clk=~Clk_CPU;
    wire SPIO_EN;
    wire [31:0] P_Data;
    wire [15:0] LED_out;
    wire [1:0] counter_set;
    wire [31:0] clkdiv;
    wire counter_we;
    wire counter0_OUT;
    wire counter1_OUT;
    wire counter2_OUT;
    wire [31:0] Data_in;
    wire [31:0] inst_in;
    wire MIO;
    wire [31:0] Addr_out;
    wire [31:0] Data_out;
    wire [31:0] PC_out;
    wire [2:0] dm_ctrl;
    wire mem_w;
    wire [31:0] Data_read_from_dm;
    wire [31:0] Data_write;
    wire [31:0] Data_write_to_dm;
    wire [3:0] wea_mem;
    wire [9:0] addra;
    wire clka0=~clk;
    wire [31:0] douta;
    wire [31:0] Disp_num;
    wire [7:0] LE_out;
    wire [7:0] point_out;
    wire Multi_8CH32_EN;

    Enter U10_Enter(
        .BTN(btn_i),
        .SW(sw_i),
        .clk(clk),
        .BTN_out(BTN),
        .SW_out(SW)
    );
    SPIO U7_SPIO(
        .clk(IO_clk),
        .rst(rst),
        .EN(SPIO_EN),
        .P_Data(P_Data),
        .LED_out(LED_out),
        .counter_set(counter_set),
        .led(led_o)
    );
    clk_div U8_clk_div(
        .SW2(SW[2]),
        .clk(clk),
        .rst(rst),
        .Clk_CPU(Clk_CPU),
        .clkdiv(clkdiv)
    );
    Counter_x U9_Counter_x(
        .clk(IO_clk),
        .clk0(clkdiv[6]),
        .clk1(clkdiv[9]),
        .clk2(clkdiv[11]),
        .counter_ch(counter_set),
        .counter_val(P_Data),
        .counter_we(counter_we),
        .rst(rst),
        .counter0_OUT(counter0_OUT),
        .counter1_OUT(counter1_OUT),
        .counter2_OUT(counter2_OUT)
    );
    SCPU U1_SCPU(
        .Data_in(Data_in),
      //  .INT(counter0_OUT),
        .clk(Clk_CPU),
        .inst_in(inst_in),
        .reset(rst),
      //  .MIO_ready(MIO),
      //  .CPU_MIO(MIO),
        .Addr_out(Addr_out),
        .Data_out(Data_out),
        .PC_out(PC_out),
        .dm_ctrl(dm_ctrl),
        .mem_w(mem_w)
    );
    dm_controller U3_dm_controller(
        .Addr_in(Addr_out),
        .Data_read_from_dm(Data_read_from_dm),
        .Data_write(Data_write),
        .dm_ctrl(dm_ctrl),
        .mem_w(mem_w),
        .Data_read(Data_in),
        .Data_write_to_dm(Data_write_to_dm),
        .wea_mem(wea_mem)
    );
    RAM_B U4_RAM_B(
        .addra(addra),
        .clka(clka0),
        .dina(Data_write_to_dm),
        .wea(wea_mem),
        .douta(douta)
    );
    ROM_D U2_ROM_D(
        .a(PC_out[11:2]),
        .spo(inst_in)
    );
    MIO_BUS U4_MIO_BUS(
        .BTN(BTN),
        .Cpu_data2bus(Data_out),
        .SW(SW),
        .addr_bus(Addr_out),
        .clk(clk),
        .counter_out(0),
        .counter0_out(counter0_OUT),
        .counter1_out(counter1_OUT),
        .counter2_out(counter2_OUT),
        .led_out(LED_out),
        .mem_w(mem_w),
        .ram_data_out(douta),
        .rst(rst),
        .Cpu_data4bus(Data_read_from_dm),
        .GPIOe0000000_we(Multi_8CH32_EN),
        .GPIOf0000000_we(SPIO_EN),
        .Peripheral_in(P_Data),
        .counter_we(counter_we),
        .ram_addr(addra),
        .ram_data_in(Data_write)
    );
    Multi_8CH32 U5_Multi_8CH32(
        .EN(Multi_8CH32_EN),
        .LES({64{1'b1}}),
        .Switch(SW[7:5]),
        .clk(IO_clk),
        .data0(P_Data),
        .data1({{2{1'b0}},PC_out[31:2]}),
        .data2(inst_in),
        .data3(0),
        .data4(Addr_out),
        .data5(Data_out),
        .data6(Data_read_from_dm),
        .data7(PC_out),
        .point_in({clkdiv[31:0],clkdiv[31:0]}),
        .rst(rst),
        .Disp_num(Disp_num),
        .LE_out(LE_out),
        .point_out(point_out)
    );
    SSeg7 U6_SSeg7(
        .Hexs(Disp_num),
        .LES(LE_out),
        .SW0(SW[0]),
        .clk(clk),
        .flash(clkdiv[10]),
        .point(point_out),
        .rst(rst),
        .seg_an(disp_an_o),
        .seg_sout(disp_seg_o)
    );
endmodule
