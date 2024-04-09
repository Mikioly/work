// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Apr  2 16:56:28 2024
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
v2K9+xe646IiZXKLQ8ApF322HA==
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
