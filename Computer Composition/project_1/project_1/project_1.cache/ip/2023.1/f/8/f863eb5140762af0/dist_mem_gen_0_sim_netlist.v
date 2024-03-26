// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Dec  9 10:21:39 2023
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
  wire [22:0]\^spo ;
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
  assign spo[22:20] = \^spo [22:20];
  assign spo[19] = \<const0> ;
  assign spo[18] = \^spo [18];
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
        .spo({NLW_U0_spo_UNCONNECTED[31:23],\^spo }),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 8464)
`pragma protect data_block
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
8UUT1rOU4R3VmBWCR7Qg6ugfmTLjJwm5GVUY6w==
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
