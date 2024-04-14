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

//���loadָ��Ҵ�������ð�գ�ʹ�ÿ����ź���0����дIF/ID�׶��Լ�PC
//����ð�գ���Ҫ��飩ʹ�þ�̬Ԥ��ʵ�֣����費��������Ctrl�׶����������IF/ID��ID/EX
module HazardDetectionUnit(
    input EX_MemRead,
    input [4:0] ID_rs1,
    input [4:0] ID_rs2,
    input [4:0] EX_rd,
    output stall_signal
    );
    //EX_rd = ID_rs1 ���� EX_rd = ID_rs2 ͬʱ��д�ź�������
    assign stall_signal = EX_MemRead & (~(|(EX_rd ^ ID_rs1)) | ~(|(EX_rd ^ ID_rs2)));

endmodule
