// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Apr 15 20:45:49 2024
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
nPeAGyZtllqBsD07pqmly8h6pw==
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
