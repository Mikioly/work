`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/08 18:36:48
// Design Name: 
// Module Name: HazardDetectionUnit
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

//检测load指令并且存在数据冒险，使得控制信号清0，不写IF/ID阶段以及PC
//控制冒险（主要检查）使用静态预测实现，假设不发生，在Ctrl阶段有输出，清IF/ID和ID/EX
module HazardDetectionUnit(
    input EX_MemRead,
    input [4:0] ID_rs1,
    input [4:0] ID_rs2,
    input [4:0] EX_rd,
    output stall_signal
    );
    //EX_rd = ID_rs1 或者 EX_rd = ID_rs2 同时有写信号则阻塞
    assign stall_signal = EX_MemRead & (~(|(EX_rd ^ ID_rs1)) | ~(|(EX_rd ^ ID_rs2)));

endmodule
