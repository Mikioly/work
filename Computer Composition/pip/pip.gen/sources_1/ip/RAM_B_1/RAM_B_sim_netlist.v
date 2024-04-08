// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Apr  8 22:10:46 2024
// Host        : LAPTOP-29JSQ2PH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim d:/Vivado/pip/pip.gen/sources_1/ip/RAM_B_1/RAM_B_sim_netlist.v
// Design      : RAM_B
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "RAM_B,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module RAM_B
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
  RAM_B_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27552)
`pragma protect data_block
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
rS8GUUocxEob2f1QUDd4J80csoHR
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
