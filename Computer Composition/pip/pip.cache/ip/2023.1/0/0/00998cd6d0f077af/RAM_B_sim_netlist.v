// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Apr  8 22:10:45 2024
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
yynHd3bG5U+F7hgN9cgu5qI+8Ieeu5Ny/rnDbCDu0o2x19UlXTtU/Ccb76AD9D2OvpXFzo6bzb2M
Z5MswF7sHoV5n/7Wb4rWRAipUWG5kYXr/lCiBD7j03f+pMV2Z5BJZCyo4CHFoiOR0OVYXCB+xOtD
kHqHDlph5UTxuysvNL46Y+uzXHi3qHD6vP99d213pVsnO/Iy9eUwAsjmZrGnjOCUWM0BZaYBkwT8
U1C67QUAIWAVvCR4Qv5vARDM34b5ca6pPpqlt8yj/VYS2N1ULbdzq5J6oX0UG+ddsgLIwdguMDh1
09DghuZGjfbxMOEOsdRB1wBOxUJifUOzNRpNYQiBxRUITJZ05VNFDyg6shm9eTQQdDojVjDlZS62
194/0s7tRI9DQ4KcRPxOKmbGXrEkUsCKXK9sWln9ibfEeNv3jXSO0nk1mHaCsX9idkZJXO6jx0BJ
aqS2SiGAVql91O5tC3Lmxfx4XBoUgIZn1TDZNEy6YE+pq294IgM1ezmtPNpo1avGgXsFW1Xb4hkw
hx2Ceb0zQO7PpemLqaWiJQG0s8Aw1G3bsodLiJvzs5YS61M1MCSkLBGX7RWHn2ZyHHUZa4cueAko
212iVtvn90RkG6q/705stPP3/xgLJmUMd9FrG1QzDES5b8lUeyloccDQjr+wkNtPyl/9dF4d6yDp
mr40dxDby9Ghr75hfFvHmuIOZJ1OOI2atmRVMSQEG5ZXBrBOLV3jc2rugicMFbrhy1DuY5FonWXE
ZoyAebBdxTD3dQfayTybFAoOob1shV6L8+47PF9O3j4dTlUwjq7w4yAQsE+lphjgbkRmQm13Kb2v
nA00q/xzWqmd2zU32/pypEiNS/uyC75R2eywEWjVDOJnFpImOVz4ERcwNBtosM5jvKL/TtLZPPqx
ulDVzuc8G8m5mzJBux5SLaoOs8GKSLQ0ua64RdGhABqqPOSa1NAXXom5QYJ3TP9BG0A7e5FawnFF
NxhGtk3gGiakSAuUS5RlOMbZpkbATT9/4ZXLNZ8ajuPNcJ05SARlZ4va6dhbzeDATly3rwq+yTQO
sVVVTUhAB1dX2tT+qE4NrmM+32dcspvXvQlhzwgO0ASh+E7kS0Y6fLvE7gq03ATA7KmPm+Oh6v4l
uouPWfC+zr9GIa2hTH1ikbHZosW1rEdUxTqJWdhjO2JrpvZU8bZg4k8jaoa2gJc+vGZ0ibhQh8n6
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
rX+8LexiUePloSq7aUb5RdGAUw==
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
