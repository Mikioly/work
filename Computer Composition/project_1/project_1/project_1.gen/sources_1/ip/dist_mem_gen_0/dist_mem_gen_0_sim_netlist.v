// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Dec  9 16:05:02 2023
// Host        : LAPTOP-29JSQ2PH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Vivado/project_3/project_1/project_1.gen/sources_1/ip/dist_mem_gen_0/dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module dist_mem_gen_0
   (a,
    spo);
  input [5:0]a;
  output [31:0]spo;

  wire \<const0> ;
  wire [5:0]a;
  wire [21:0]\^spo ;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;
  wire [31:2]NLW_U0_spo_UNCONNECTED;

  assign spo[31] = \<const0> ;
  assign spo[30] = \<const0> ;
  assign spo[29] = \<const0> ;
  assign spo[28] = \<const0> ;
  assign spo[27] = \<const0> ;
  assign spo[26] = \<const0> ;
  assign spo[25] = \<const0> ;
  assign spo[24] = \<const0> ;
  assign spo[23] = \<const0> ;
  assign spo[22] = \<const0> ;
  assign spo[21:20] = \^spo [21:20];
  assign spo[19] = \<const0> ;
  assign spo[18] = \<const0> ;
  assign spo[17] = \<const0> ;
  assign spo[16:15] = \^spo [16:15];
  assign spo[14] = \<const0> ;
  assign spo[13] = \^spo [13];
  assign spo[12] = \<const0> ;
  assign spo[11] = \<const0> ;
  assign spo[10] = \<const0> ;
  assign spo[9:7] = \^spo [9:7];
  assign spo[6] = \<const0> ;
  assign spo[5:4] = \^spo [5:4];
  assign spo[3] = \<const0> ;
  assign spo[2] = \<const0> ;
  assign spo[1:0] = \^spo [1:0];
  GND GND
       (.G(\<const0> ));
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "dist_mem_gen_0.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "32" *) 
  (* is_du_within_envelope = "true" *) 
  dist_mem_gen_0_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[31:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[31:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[31:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo({NLW_U0_spo_UNCONNECTED[31:22],\^spo }),
        .we(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
bEktTo8XfP53J4LC9J1bzNOsr+DeYSQtsSeSeRwv1ROtu7MJT7BubpFM5B3JNITvmmXMIQ7cHCcM
BFy5Vu0fdwcQmgznzr1F4XAF5OH/PlBVKmCiA5IZpd+UQUMuy8l823afh4u8+Fg3bwZX7B36A3bn
Zez9yHjSKD7JGdQ9zA8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
vAZQ8ZTe/MermX+omywGuwEzd7SLijiaDbuX0B9K4vjWUXvRoI6Em0qizreOX/qdo4JlybEpt70i
jJhVvWv69a9yKb8TMuvLagWbQydSwTJKTY6VSR/CtA2Uive8NvQyiQKFXLjR8k8OBlgOYmyzZEEM
vYgZLdnM3d2xSMMmeGF+dNh8tCJpM10LRaCrnj5w8L73RtOImlhI/zlR8cC5oo1TbyRV+JuHvvMZ
sYS3+4qn/f80Ugvao3cYMW0LtoTftK9oYpzhiyqg6hnJnbGsAENom2wqBpcRJf1vsI98WiJqDCuh
LIdMFI+M5KuqToM8D+FTQUOT2NniYpTmj5qTFg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VpwnevLJi/mNDesLbbdRntRX/1KkSUuxvcBO6/opCSkxKA2w7s8Eyh+CvZJvHhBMtWZquJPlWZsE
d3toYaeyczcrzAzfKryx5nnTvscAyYnKl8QyY0fWsE1UqWjg6tazMCtzxlfF3HfKx/GSm3D/0NEz
xzyxLBgRosbKCX4YRV0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MhGbYf5xy0E517prDNoCHbf/sVQ5JHlfzlh1Fz+rfDm8S3/Zt1g/AR2QuQPNwJUQO22hvTTB491a
xRG5ct3upD6ZdXgMesPA9KgwjRjoBp/uriYuT6Sb/yE2jugYl2qBGpqxN9n2OgAVfK3o9XZ/aIcR
St2PwrmKRzU/ZoYenWUMZ6ZRsVNlzFCEBcKop6f5TBy0bWAeebXRZ0Mot23DVX4pqVyFaQoXdmkm
56Vr2jGszkLic4M0JoKahUlQpnrZuHIWgFVd/RzXXP9HwYBRQTxaKnNX6eWTdksVvzAImMYoPa4G
PJJFf+gsNAKp5BIFXjwHfNC+Nerc6XzDmxe+pw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jfnJJlFHpbB8S3PjID3rEIRi4fzY1WUZaITx6CJ38mSZfYSA13DJislb1OQ17w4Hnv5eGM/0GVgA
2jPR4wYaMzC8v3iDfETrH4kyrFglo3a/NDlACuR1U65YoHUnUu0UmMMovxQEnd9ByAfOtabZPL4j
FTvCoVMpwI8rdT4YJQ5pYXryESdM3NUe29p9OWbY1EalisEVViKuSwS4LzwtaOmrPecCE56FGEp+
2iyBMICOFF2PpT8Bqp39Z2rx4xyIiudZKo3LNimTm/UYBCnPAJ7XBIS+JiCIOkHsPER+wNivbtUb
J02F8ZLbEtS0qmUdYDXO4qqhc1njU9O6Uk9yNA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
uOK6pXmc+RsarhB5GcgUPkseiDLhaN7KZ4C18Aqea9NqSbvIERAENTml4U58cVlx6j599K+L2aW5
rVMZLtj8UE4yfEDhtivrSdBYh446mqbnToHhH5r4BmzYnr6BUuXVZ4NIUU29WnaJUZxwrvZeCln4
GQCdP1kUA1Ozy9B47ndTYgOzCcZSr9w36W7ZA1gm34lqVpXYuGsaRTvk1DhS96aFGCeiCTbs5HM3
e0JPkZ7YUsMgWuRzE+jHE1TEMVjbPkpPjFGCYOEeDf2bc/2s2fPLA3bxMs61xUFH5LAd7Qrs9D2v
Mx+Vcfvo7kmp3J5LW99NXfA9OvG1JgjJ7ykhmw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
OS52LCfxYaApFxxvQUqjJD8DSzwhbsM5irqCX6E4R0iBINlXI3QVmtLKp8vhPICYZWjEuTIVzohU
28vwAOP2ECPWOkJjN+ny9RQeAKmQhPbxHYOysXg4IgtMbK+ZODUoMyLIsJzz2yIFl5qvQeLBnc44
NvqDk7nFLhtrN9De4XV14FKtDvQG0BdWr2mXiS7WiEAQxiww87A0M8yP82JlG6ykYSwQh5G8K6pv
YHoqI8mKAC+KGuDltBnyBrKGip5pRq7Kf+0okVAOwt0lJwDvS0JMNEUg1HK/mEIR6TKUdd8B/fms
4qcaCBYsptjoZVCq4ygSG56x8uaQXMVsEALe2w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
Aew/RSoMZUIh8oIZPhChM37w+R5unp+7pprfqezjGFUVX16UeT1spPFU1DaqTQvQkXhBe4/aNxvo
Y2eUJsQd8zSC9wBoevCnvwaHEv/IBc+OKmBzOPxO1hHXDVPtDZWdRCx+1y0ZYhQa+NA6jLP2zOJx
/emAZW55AWgZKKJS4QgantVgmUSyKVe/LlIVstraTkF4EzV092mOj1iPH/UqFFno9IwE1aOXuYuT
XrZU9D1dkPLBMg3CDwOi+bXRSgjvuueWT7ostJSFraLwDkurP1pYHHG4NDxYiDxMFWarWeII+T6v
hMJKd/8ZRrh5aHvGV5O/Hdc4rPitxa/cdQPAc0r2e2XWAJIdic09atzXXyU9o2vV/urpMsjSVva4
B5a/PwS16c18IMm6vAeFSLMo0T/jor1Q5SoxEC5QEkxvEfIUjjw7k0b1Crv5EfWz/sJ1LHwqlG7t
az+h03yAqvqGfOHC+7YoilYImR1NiLTCLgxnUfIvxo6woY4SgD+hLki4

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iZJ+xdyrZbhNc8zYurF70yKiutV2IBjRXDiOZ/7w25UL6rCpY4Pd5gJN3+SNIoQ66bzRxlhaXMNu
tzoCM2kFY4N5ZbCy/S4rtBK0PUHKEVd7c5Btr5gn8BgQWiIafJ8Qa/8xqo95ocakFzN6/V+DNvyN
7FPkXDwuiaD0cmHW8XyOxnHM2b/XKHOibr7UKTRAomXyt7y80BVKpE50ddxXAxw9wlMn+gpW5Kpz
Dp8z4VH3uZrVv8Yl5RWELOQ3Uh0Xizb20mvc6Lu+BNoz0Ys9zZUaqKU71Kuv4s8vgPzrZXXNifo2
pU0aNj0oqAGlSTcTCBF8Tl6/jFvUXQEzYoIfiQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8208)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
