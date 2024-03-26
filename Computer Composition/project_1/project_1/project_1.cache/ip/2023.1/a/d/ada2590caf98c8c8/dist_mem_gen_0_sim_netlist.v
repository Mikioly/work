// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Dec  9 16:05:01 2023
// Host        : LAPTOP-29JSQ2PH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ dist_mem_gen_0_sim_netlist.v
// Design      : dist_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "dist_mem_gen_0,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8224)
`pragma protect data_block
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
IqikSSK0Ix9ntXfDZ8Sv6A==
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
