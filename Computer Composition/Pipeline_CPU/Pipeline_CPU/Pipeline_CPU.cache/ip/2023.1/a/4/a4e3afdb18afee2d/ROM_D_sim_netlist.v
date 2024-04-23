// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Apr 15 19:59:24 2024
// Host        : LAPTOP-29JSQ2PH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ ROM_D_sim_netlist.v
// Design      : ROM_D
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "ROM_D,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (a,
    spo);
  input [9:0]a;
  output [31:0]spo;

  wire [9:0]a;
  wire [31:0]spo;
  wire [31:0]NLW_U0_dpo_UNCONNECTED;
  wire [31:0]NLW_U0_qdpo_UNCONNECTED;
  wire [31:0]NLW_U0_qspo_UNCONNECTED;

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
  (* c_addr_width = "10" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "1024" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "ROM_D.mif" *) 
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
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
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
        .spo(spo),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19488)
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
