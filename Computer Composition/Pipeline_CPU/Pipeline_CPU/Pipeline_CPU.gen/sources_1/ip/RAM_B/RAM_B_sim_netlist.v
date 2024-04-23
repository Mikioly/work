// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Apr 15 20:45:49 2024
// Host        : LAPTOP-29JSQ2PH running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top RAM_B -prefix
//               RAM_B_ RAM_B_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 27264)
`pragma protect data_block
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
tMHMc32OzTvmGMPvP9DM3veo
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
