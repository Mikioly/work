`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/08 18:28:38
// Design Name: 
// Module Name: ForwardingUnit
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

//解决R型指令冒险
module ForwardingUnit(
    input MEM_RegWrite, //EX/MEM RegWrite
    input [4:0] MEM_rd, //EX/MEM RegisterRd
    input WB_RegWrite, //MEM/WB RegWrite
    input [4:0] WB_rd, //MEM/WB RegisterRd
    input [4:0] EX_rs, //EX/MEM RegisterRs1/2
    output [1:0] ForwardSignal //00: from reg    10:from mem   01: from WB_RD
    );
    wire MEM_Forward;
    //有内存写信号 并且 MEM_rd  = EX_rs
    assign MEM_Forward = ~(|(MEM_rd ^ EX_rs)) & MEM_RegWrite;
    wire WB_Forward;
    //有wb阶段写信号且无mem阶段写信号 且WB_rd = EX_rs
    assign WB_Forward = ~(|(WB_rd ^ EX_rs)) & WB_RegWrite & ~MEM_Forward;
    assign ForwardSignal = {MEM_Forward,WB_Forward};
    
endmodule
