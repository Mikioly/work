// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sun Apr 14 17:46:03 2024
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
bx5U7/I/TUllHpEALmDEeb6owQ==
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
