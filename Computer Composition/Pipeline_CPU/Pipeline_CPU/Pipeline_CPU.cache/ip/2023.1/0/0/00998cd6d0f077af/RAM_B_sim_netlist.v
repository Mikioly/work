// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Mar 27 12:01:37 2024
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
WMTmAVmVExXufOSjL28BZaUzFw==
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
