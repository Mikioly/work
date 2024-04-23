// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Apr 15 19:58:37 2024
// Host        : LAPTOP-29JSQ2PH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RAM_B_sim_netlist.v
// Design      : RAM_B
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_B,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    wea,
    addra,
    dina,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [3:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [31:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [31:0]douta;

  wire [9:0]addra;
  wire clka;
  wire [31:0]dina;
  wire [31:0]douta;
  wire [3:0]wea;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [31:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "1" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.96495 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "RAM_B.mem" *) 
  (* C_INIT_FILE_NAME = "RAM_B.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27664)
`pragma protect data_block
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
NjjLDwJP6ebmpFkCMLjdI4E/2w==
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
