// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Apr  2 16:56:29 2024
// Host        : LAPTOP-29JSQ2PH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim d:/Vivado/test/test.gen/sources_1/ip/RAM_B/RAM_B_sim_netlist.v
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
NO4B5gEvrU5IaQzeGDu6X4ZmyxTh
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
