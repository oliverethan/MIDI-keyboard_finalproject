// Verilog netlist produced by program LSE :  version Radiant (64-bit) 1.0.0.350.6
// Netlist written on Wed Apr 24 17:52:41 2019
// Source file index table: 
// Object locations will have the form @<file_index>(<first_ line>[<left_column>],<last_line>[<right_column>])
// file 0 "c:/users/ellesh01/desktop/midi_final_proj_2/play_note.vhd"
// file 1 "c:/users/ellesh01/desktop/midi_final_proj_2/pll/rtl/pll.v"
// file 2 "c:/users/ellesh01/desktop/midi_final_proj_2/rom_lut.vhd"
// file 3 "c:/lscc/radiant/1.0/ip/pmi/pmi.v"
// file 4 "c:/lscc/radiant/1.0/ip/pmi/pmi.vhd"
// file 5 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ccu2_b.v"
// file 6 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/fd1p3bz.v"
// file 7 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/fd1p3dz.v"
// file 8 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/fd1p3iz.v"
// file 9 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/fd1p3jz.v"
// file 10 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/hsosc.v"
// file 11 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/hsosc1p8v.v"
// file 12 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ib.v"
// file 13 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ifd1p3az.v"
// file 14 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/lsosc.v"
// file 15 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/lsosc1p8v.v"
// file 16 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ob.v"
// file 17 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/obz_b.v"
// file 18 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ofd1p3az.v"
// file 19 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/pdp4k.v"
// file 20 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/rgb.v"
// file 21 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/rgb1p8v.v"
// file 22 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/sp256k.v"
// file 23 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/legacy.v"
// file 24 "c:/lscc/radiant/1.0/ip/common/adder/rtl/lscc_adder.v"
// file 25 "c:/lscc/radiant/1.0/ip/common/complex_mult/rtl/lscc_complex_mult.v"
// file 26 "c:/lscc/radiant/1.0/ip/common/mult_accumulate/rtl/lscc_mult_accumulate.v"
// file 27 "c:/lscc/radiant/1.0/ip/common/mult_add_sub/rtl/lscc_mult_add_sub.v"
// file 28 "c:/lscc/radiant/1.0/ip/common/multiplier/rtl/lscc_multiplier.v"
// file 29 "c:/lscc/radiant/1.0/ip/common/ram_dp/rtl/lscc_ram_dp.v"
// file 30 "c:/lscc/radiant/1.0/ip/common/ram_dq/rtl/lscc_ram_dq.v"
// file 31 "c:/lscc/radiant/1.0/ip/common/subtractor/rtl/lscc_subtractor.v"
// file 32 "c:/lscc/radiant/1.0/ip/pmi/pmi_add.v"
// file 33 "c:/lscc/radiant/1.0/ip/pmi/pmi_complex_mult.v"
// file 34 "c:/lscc/radiant/1.0/ip/pmi/pmi_dsp.v"
// file 35 "c:/lscc/radiant/1.0/ip/pmi/pmi_mac.v"
// file 36 "c:/lscc/radiant/1.0/ip/pmi/pmi_mult.v"
// file 37 "c:/lscc/radiant/1.0/ip/pmi/pmi_multaddsub.v"
// file 38 "c:/lscc/radiant/1.0/ip/pmi/pmi_ram_dp.v"
// file 39 "c:/lscc/radiant/1.0/ip/pmi/pmi_ram_dq.v"
// file 40 "c:/lscc/radiant/1.0/ip/pmi/pmi_sub.v"
// file 41 "c:/users/ellesh01/desktop/midi_final_proj_2/pll/rtl/core/lscc_pll.v"

//
// Verilog Description of module play_note
//

module play_note (clk, note, on_off, sample);   /* synthesis lineinfo="@0(5[8],5[17])"*/
    input clk;   /* synthesis lineinfo="@0(7[3],7[6])"*/
    input [7:0]note;   /* synthesis lineinfo="@0(8[3],8[7])"*/
    input on_off;   /* synthesis lineinfo="@0(10[3],10[9])"*/
    output sample;   /* synthesis lineinfo="@0(11[3],11[9])"*/
    
    
    wire GND_net, VCC_net, note_c_7, note_c_6, note_c_5, note_c_4, 
        note_c_3, note_c_2, note_c_1, note_c_0, on_off_c, sample_c;
    wire [31:0]counter;   /* synthesis lineinfo="@0(18[8],18[15])"*/
    
    wire n32, counter_31__N_65;
    wire [31:0]counter_31__N_33;
    
    wire n4992, n4983, n30, n28, n63, n26, n3108, n24, n22, 
        n3106, n22_adj_108, n45, n4974, n20, n36, n34, n48, 
        n6, n5064, n5001, n41, n40, n50, n3124, n8, n3122, 
        n43, n40_adj_109, n37, n3120, n10, n44, n3118, n46, 
        n41_adj_110, n3116, n3114, n43_adj_111, n53, n12, n5055, 
        n3112, n44_adj_112, n39, n14, n18, n16, n18_adj_113, n3110, 
        n4, n3100, n3102, n3104, n3098, n3096, n4920, n3094, 
        n4938, n4965, n3932, n5046, n16_adj_114, n4956, n14_adj_115, 
        n5037, n4947, n5028, n7, n4929, n5019, n24_adj_116, n23, 
        n2, n5010;
    
    VHI i2 (.Z(VCC_net));
    rom_lut_default get_frequency (.note_c_2(note_c_2), .note_c_0(note_c_0), 
            .note_c_1(note_c_1), .note_c_3(note_c_3), .note_c_5(note_c_5), 
            .n18(n18), .note_c_4(note_c_4), .n7(n7), .note_c_6(note_c_6), 
            .n39(n39), .n44(n44_adj_112), .n53(n53), .n43(n43_adj_111), 
            .n41(n41_adj_110), .n44_adj_1(n44), .n37(n37), .n40(n40_adj_109), 
            .n43_adj_2(n43), .n50(n50), .n40_adj_3(n40), .n41_adj_4(n41), 
            .n48(n48), .n45(n45), .n63(n63), .n46(n46), .note_c_7(note_c_7), 
            .n3932(n3932));   /* synthesis lineinfo="@0(31[17],31[24])"*/
    LUT4 counter_31__I_0_13_i4_4_lut (.A(counter[3]), .B(counter_31__N_33[3]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[3])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i4_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_i30_4_lut (.A(n28), .B(counter[14]), .C(note_c_7), 
         .D(n44_adj_112), .Z(n30)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+!(D)))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam counter_31__I_0_i30_4_lut.INIT = "0xe8ee";
    IB on_off_pad (.I(on_off), .O(on_off_c));   /* synthesis lineinfo="@0(10[3],10[9])"*/
    IB \note_pad[0]  (.I(note[0]), .O(note_c_0));   /* synthesis lineinfo="@0(8[3],8[7])"*/
    IB \note_pad[1]  (.I(note[1]), .O(note_c_1));   /* synthesis lineinfo="@0(8[3],8[7])"*/
    IB \note_pad[2]  (.I(note[2]), .O(note_c_2));   /* synthesis lineinfo="@0(8[3],8[7])"*/
    IB \note_pad[3]  (.I(note[3]), .O(note_c_3));   /* synthesis lineinfo="@0(8[3],8[7])"*/
    IB \note_pad[4]  (.I(note[4]), .O(note_c_4));   /* synthesis lineinfo="@0(8[3],8[7])"*/
    IB \note_pad[5]  (.I(note[5]), .O(note_c_5));   /* synthesis lineinfo="@0(8[3],8[7])"*/
    IB \note_pad[6]  (.I(note[6]), .O(note_c_6));   /* synthesis lineinfo="@0(8[3],8[7])"*/
    IB \note_pad[7]  (.I(note[7]), .O(note_c_7));   /* synthesis lineinfo="@0(8[3],8[7])"*/
    OB sample_pad (.I(sample_c), .O(sample));   /* synthesis lineinfo="@0(11[3],11[9])"*/
    VLO i1 (.Z(GND_net));
    FA2 add_6_add_4_33 (.A0(GND_net), .B0(counter[31]), .C0(GND_net), 
        .D0(n3124), .CI0(n3124), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
        .D1(n5064), .CI1(n5064), .CO0(n5064), .S0(counter_31__N_33[31]));   /* synthesis lineinfo="@0(43[16],43[23])"*/
    defparam add_6_add_4_33.INIT0 = "0xc33c";
    defparam add_6_add_4_33.INIT1 = "0xc33c";
    FA2 add_6_add_4_31 (.A0(GND_net), .B0(counter[29]), .C0(GND_net), 
        .D0(n3122), .CI0(n3122), .A1(GND_net), .B1(counter[30]), .C1(GND_net), 
        .D1(n5055), .CI1(n5055), .CO0(n5055), .CO1(n3124), .S0(counter_31__N_33[29]), 
        .S1(counter_31__N_33[30]));   /* synthesis lineinfo="@0(43[16],43[23])"*/
    defparam add_6_add_4_31.INIT0 = "0xc33c";
    defparam add_6_add_4_31.INIT1 = "0xc33c";
    FA2 add_6_add_4_29 (.A0(GND_net), .B0(counter[27]), .C0(GND_net), 
        .D0(n3120), .CI0(n3120), .A1(GND_net), .B1(counter[28]), .C1(GND_net), 
        .D1(n5046), .CI1(n5046), .CO0(n5046), .CO1(n3122), .S0(counter_31__N_33[27]), 
        .S1(counter_31__N_33[28]));   /* synthesis lineinfo="@0(43[16],43[23])"*/
    defparam add_6_add_4_29.INIT0 = "0xc33c";
    defparam add_6_add_4_29.INIT1 = "0xc33c";
    FA2 add_6_add_4_27 (.A0(GND_net), .B0(counter[25]), .C0(GND_net), 
        .D0(n3118), .CI0(n3118), .A1(GND_net), .B1(counter[26]), .C1(GND_net), 
        .D1(n5037), .CI1(n5037), .CO0(n5037), .CO1(n3120), .S0(counter_31__N_33[25]), 
        .S1(counter_31__N_33[26]));   /* synthesis lineinfo="@0(43[16],43[23])"*/
    defparam add_6_add_4_27.INIT0 = "0xc33c";
    defparam add_6_add_4_27.INIT1 = "0xc33c";
    FA2 add_6_add_4_25 (.A0(GND_net), .B0(counter[23]), .C0(GND_net), 
        .D0(n3116), .CI0(n3116), .A1(GND_net), .B1(counter[24]), .C1(GND_net), 
        .D1(n5028), .CI1(n5028), .CO0(n5028), .CO1(n3118), .S0(counter_31__N_33[23]), 
        .S1(counter_31__N_33[24]));   /* synthesis lineinfo="@0(43[16],43[23])"*/
    defparam add_6_add_4_25.INIT0 = "0xc33c";
    defparam add_6_add_4_25.INIT1 = "0xc33c";
    FA2 add_6_add_4_23 (.A0(GND_net), .B0(counter[21]), .C0(GND_net), 
        .D0(n3114), .CI0(n3114), .A1(GND_net), .B1(counter[22]), .C1(GND_net), 
        .D1(n5019), .CI1(n5019), .CO0(n5019), .CO1(n3116), .S0(counter_31__N_33[21]), 
        .S1(counter_31__N_33[22]));   /* synthesis lineinfo="@0(43[16],43[23])"*/
    defparam add_6_add_4_23.INIT0 = "0xc33c";
    defparam add_6_add_4_23.INIT1 = "0xc33c";
    FA2 add_6_add_4_21 (.A0(GND_net), .B0(counter[19]), .C0(GND_net), 
        .D0(n3112), .CI0(n3112), .A1(GND_net), .B1(counter[20]), .C1(GND_net), 
        .D1(n5010), .CI1(n5010), .CO0(n5010), .CO1(n3114), .S0(counter_31__N_33[19]), 
        .S1(counter_31__N_33[20]));   /* synthesis lineinfo="@0(43[16],43[23])"*/
    defparam add_6_add_4_21.INIT0 = "0xc33c";
    defparam add_6_add_4_21.INIT1 = "0xc33c";
    FA2 add_6_add_4_19 (.A0(GND_net), .B0(counter[17]), .C0(GND_net), 
        .D0(n3110), .CI0(n3110), .A1(GND_net), .B1(counter[18]), .C1(GND_net), 
        .D1(n5001), .CI1(n5001), .CO0(n5001), .CO1(n3112), .S0(counter_31__N_33[17]), 
        .S1(counter_31__N_33[18]));   /* synthesis lineinfo="@0(43[16],43[23])"*/
    defparam add_6_add_4_19.INIT0 = "0xc33c";
    defparam add_6_add_4_19.INIT1 = "0xc33c";
    FA2 add_6_add_4_17 (.A0(GND_net), .B0(counter[15]), .C0(GND_net), 
        .D0(n3108), .CI0(n3108), .A1(GND_net), .B1(counter[16]), .C1(GND_net), 
        .D1(n4992), .CI1(n4992), .CO0(n4992), .CO1(n3110), .S0(counter_31__N_33[15]), 
        .S1(counter_31__N_33[16]));   /* synthesis lineinfo="@0(43[16],43[23])"*/
    defparam add_6_add_4_17.INIT0 = "0xc33c";
    defparam add_6_add_4_17.INIT1 = "0xc33c";
    FA2 add_6_add_4_15 (.A0(GND_net), .B0(counter[13]), .C0(GND_net), 
        .D0(n3106), .CI0(n3106), .A1(GND_net), .B1(counter[14]), .C1(GND_net), 
        .D1(n4983), .CI1(n4983), .CO0(n4983), .CO1(n3108), .S0(counter_31__N_33[13]), 
        .S1(counter_31__N_33[14]));   /* synthesis lineinfo="@0(43[16],43[23])"*/
    defparam add_6_add_4_15.INIT0 = "0xc33c";
    defparam add_6_add_4_15.INIT1 = "0xc33c";
    FA2 add_6_add_4_13 (.A0(GND_net), .B0(counter[11]), .C0(GND_net), 
        .D0(n3104), .CI0(n3104), .A1(GND_net), .B1(counter[12]), .C1(GND_net), 
        .D1(n4974), .CI1(n4974), .CO0(n4974), .CO1(n3106), .S0(counter_31__N_33[11]), 
        .S1(counter_31__N_33[12]));   /* synthesis lineinfo="@0(43[16],43[23])"*/
    defparam add_6_add_4_13.INIT0 = "0xc33c";
    defparam add_6_add_4_13.INIT1 = "0xc33c";
    FA2 add_6_add_4_11 (.A0(GND_net), .B0(counter[9]), .C0(GND_net), .D0(n3102), 
        .CI0(n3102), .A1(GND_net), .B1(counter[10]), .C1(GND_net), .D1(n4965), 
        .CI1(n4965), .CO0(n4965), .CO1(n3104), .S0(counter_31__N_33[9]), 
        .S1(counter_31__N_33[10]));   /* synthesis lineinfo="@0(43[16],43[23])"*/
    defparam add_6_add_4_11.INIT0 = "0xc33c";
    defparam add_6_add_4_11.INIT1 = "0xc33c";
    FA2 add_6_add_4_9 (.A0(GND_net), .B0(counter[7]), .C0(GND_net), .D0(n3100), 
        .CI0(n3100), .A1(GND_net), .B1(counter[8]), .C1(GND_net), .D1(n4956), 
        .CI1(n4956), .CO0(n4956), .CO1(n3102), .S0(counter_31__N_33[7]), 
        .S1(counter_31__N_33[8]));   /* synthesis lineinfo="@0(43[16],43[23])"*/
    defparam add_6_add_4_9.INIT0 = "0xc33c";
    defparam add_6_add_4_9.INIT1 = "0xc33c";
    FA2 add_6_add_4_7 (.A0(GND_net), .B0(counter[5]), .C0(GND_net), .D0(n3098), 
        .CI0(n3098), .A1(GND_net), .B1(counter[6]), .C1(GND_net), .D1(n4947), 
        .CI1(n4947), .CO0(n4947), .CO1(n3100), .S0(counter_31__N_33[5]), 
        .S1(counter_31__N_33[6]));   /* synthesis lineinfo="@0(43[16],43[23])"*/
    defparam add_6_add_4_7.INIT0 = "0xc33c";
    defparam add_6_add_4_7.INIT1 = "0xc33c";
    FA2 add_6_add_4_5 (.A0(GND_net), .B0(counter[3]), .C0(GND_net), .D0(n3096), 
        .CI0(n3096), .A1(GND_net), .B1(counter[4]), .C1(GND_net), .D1(n4938), 
        .CI1(n4938), .CO0(n4938), .CO1(n3098), .S0(counter_31__N_33[3]), 
        .S1(counter_31__N_33[4]));   /* synthesis lineinfo="@0(43[16],43[23])"*/
    defparam add_6_add_4_5.INIT0 = "0xc33c";
    defparam add_6_add_4_5.INIT1 = "0xc33c";
    FA2 add_6_add_4_3 (.A0(GND_net), .B0(counter[1]), .C0(GND_net), .D0(n3094), 
        .CI0(n3094), .A1(GND_net), .B1(counter[2]), .C1(GND_net), .D1(n4929), 
        .CI1(n4929), .CO0(n4929), .CO1(n3096), .S0(counter_31__N_33[1]), 
        .S1(counter_31__N_33[2]));   /* synthesis lineinfo="@0(43[16],43[23])"*/
    defparam add_6_add_4_3.INIT0 = "0xc33c";
    defparam add_6_add_4_3.INIT1 = "0xc33c";
    FA2 add_6_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .A1(GND_net), 
        .B1(counter[0]), .C1(VCC_net), .D1(n4920), .CI1(n4920), .CO0(n4920), 
        .CO1(n3094), .S1(counter_31__N_33[0]));   /* synthesis lineinfo="@0(43[16],43[23])"*/
    defparam add_6_add_4_1.INIT0 = "0xc33c";
    defparam add_6_add_4_1.INIT1 = "0xc33c";
    LUT4 counter_31__I_0_13_i21_4_lut (.A(counter[20]), .B(counter_31__N_33[20]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[20])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i21_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_13_i3_4_lut (.A(counter[2]), .B(counter_31__N_33[2]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[2])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i3_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_i28_4_lut (.A(n26), .B(counter[13]), .C(note_c_7), 
         .D(n53), .Z(n28)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+!(D)))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam counter_31__I_0_i28_4_lut.INIT = "0xe8ee";
    LUT4 counter_31__I_0_i26_4_lut (.A(n24), .B(counter[12]), .C(note_c_7), 
         .D(n43_adj_111), .Z(n26)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+!(D)))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam counter_31__I_0_i26_4_lut.INIT = "0xe8ee";
    LUT4 counter_31__I_0_13_i20_4_lut (.A(counter[19]), .B(counter_31__N_33[19]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[19])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i20_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_i24_4_lut (.A(n22_adj_108), .B(counter[11]), .C(note_c_7), 
         .D(n41_adj_110), .Z(n24)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+!(D)))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam counter_31__I_0_i24_4_lut.INIT = "0xe8ee";
    LUT4 counter_31__I_0_i22_4_lut (.A(n20), .B(counter[10]), .C(note_c_7), 
         .D(n44), .Z(n22_adj_108)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+!(D)))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam counter_31__I_0_i22_4_lut.INIT = "0xe8ee";
    LUT4 counter_31__I_0_13_i2_4_lut (.A(counter[1]), .B(counter_31__N_33[1]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[1])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i2_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_13_i19_4_lut (.A(counter[18]), .B(counter_31__N_33[18]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[18])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i19_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_i20_4_lut (.A(n18_adj_113), .B(counter[9]), .C(note_c_7), 
         .D(n37), .Z(n20)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+!(D)))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam counter_31__I_0_i20_4_lut.INIT = "0xe8ee";
    LUT4 counter_31__I_0_13_i18_4_lut (.A(counter[17]), .B(counter_31__N_33[17]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[17])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i18_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_i18_4_lut (.A(n16), .B(counter[8]), .C(note_c_7), 
         .D(n40_adj_109), .Z(n18_adj_113)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+!(D)))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam counter_31__I_0_i18_4_lut.INIT = "0xe8ee";
    LUT4 counter_31__I_0_13_i1_4_lut (.A(counter[0]), .B(counter_31__N_33[0]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[0])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i1_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_13_i17_4_lut (.A(counter[16]), .B(counter_31__N_33[16]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[16])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i17_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_i16_4_lut (.A(n14), .B(counter[7]), .C(note_c_7), 
         .D(n43), .Z(n16)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+!(D)))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam counter_31__I_0_i16_4_lut.INIT = "0xe8ee";
    LUT4 counter_31__I_0_13_i16_4_lut (.A(counter[15]), .B(counter_31__N_33[15]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[15])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i16_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_13_i25_4_lut (.A(counter[24]), .B(counter_31__N_33[24]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[24])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i25_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_i14_4_lut (.A(n12), .B(counter[6]), .C(note_c_7), 
         .D(n50), .Z(n14)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+!(D)))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam counter_31__I_0_i14_4_lut.INIT = "0xe8ee";
    LUT4 sample_I_0_14_3_lut (.A(sample_c), .B(counter_31__N_65), .C(on_off_c), 
         .Z(sample_c)) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam sample_I_0_14_3_lut.INIT = "0x6a6a";
    LUT4 counter_31__I_0_i12_4_lut (.A(n10), .B(counter[5]), .C(note_c_7), 
         .D(n40), .Z(n12)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+!(D)))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam counter_31__I_0_i12_4_lut.INIT = "0xe8ee";
    LUT4 counter_31__I_0_13_i15_4_lut (.A(counter[14]), .B(counter_31__N_33[14]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[14])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i15_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_i10_4_lut (.A(n8), .B(counter[4]), .C(note_c_7), 
         .D(n41), .Z(n10)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+!(D)))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam counter_31__I_0_i10_4_lut.INIT = "0xe8ee";
    LUT4 counter_31__I_0_13_i30_4_lut (.A(counter[29]), .B(counter_31__N_33[29]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[29])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i30_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_i8_4_lut (.A(n6), .B(counter[3]), .C(note_c_7), 
         .D(n48), .Z(n8)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+!(D)))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam counter_31__I_0_i8_4_lut.INIT = "0xe8ee";
    LUT4 counter_31__I_0_13_i11_4_lut (.A(counter[10]), .B(counter_31__N_33[10]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[10])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i11_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_13_i28_4_lut (.A(counter[27]), .B(counter_31__N_33[27]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[27])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i28_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_i6_4_lut (.A(n4), .B(counter[2]), .C(note_c_7), 
         .D(n45), .Z(n6)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+!(D)))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam counter_31__I_0_i6_4_lut.INIT = "0xe8ee";
    LUT4 counter_31__I_0_13_i10_4_lut (.A(counter[9]), .B(counter_31__N_33[9]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[9])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i10_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_13_i27_4_lut (.A(counter[26]), .B(counter_31__N_33[26]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[26])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i27_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_i4_4_lut (.A(n2), .B(counter[1]), .C(note_c_7), 
         .D(n63), .Z(n4)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B+(C+!(D)))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam counter_31__I_0_i4_4_lut.INIT = "0xd4dd";
    LUT4 counter_31__I_0_13_i9_4_lut (.A(counter[8]), .B(counter_31__N_33[8]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[8])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i9_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_13_i26_4_lut (.A(counter[25]), .B(counter_31__N_33[25]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[25])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i26_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_13_i8_4_lut (.A(counter[7]), .B(counter_31__N_33[7]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[7])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i8_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_13_i29_4_lut (.A(counter[28]), .B(counter_31__N_33[28]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[28])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i29_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_13_i13_4_lut (.A(counter[12]), .B(counter_31__N_33[12]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[12])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i13_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_13_i7_4_lut (.A(counter[6]), .B(counter_31__N_33[6]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[6])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i7_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_13_i24_4_lut (.A(counter[23]), .B(counter_31__N_33[23]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[23])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i24_4_lut.INIT = "0x0aca";
    LUT4 i1_3_lut (.A(counter[0]), .B(note_c_7), .C(n46), .Z(n2)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam i1_3_lut.INIT = "0x1010";
    LUT4 counter_31__I_0_13_i6_4_lut (.A(counter[5]), .B(counter_31__N_33[5]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[5])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i6_4_lut.INIT = "0x0aca";
    LUT4 i1647_4_lut (.A(n23), .B(counter[31]), .C(n36), .D(n24_adj_116), 
         .Z(counter_31__N_65)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam i1647_4_lut.INIT = "0x3332";
    LUT4 counter_31__I_0_13_i31_4_lut (.A(counter[30]), .B(counter_31__N_33[30]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[30])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i31_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_13_i23_4_lut (.A(counter[22]), .B(counter_31__N_33[22]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[22])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i23_4_lut.INIT = "0x0aca";
    LUT4 i10_4_lut (.A(counter[24]), .B(counter[20]), .C(counter[28]), 
         .D(n14_adj_115), .Z(n23)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.INIT = "0xfffe";
    LUT4 counter_31__I_0_13_i12_4_lut (.A(counter[11]), .B(counter_31__N_33[11]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[11])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i12_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_i36_4_lut (.A(n34), .B(counter[17]), .C(n7), 
         .D(n3932), .Z(n36)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B ((D)+!C))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam counter_31__I_0_i36_4_lut.INIT = "0xee8e";
    LUT4 i11_4_lut (.A(counter[18]), .B(n22), .C(n16_adj_114), .D(counter[23]), 
         .Z(n24_adj_116)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.INIT = "0xfffe";
    LUT4 counter_31__I_0_13_i14_4_lut (.A(counter[13]), .B(counter_31__N_33[13]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[13])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i14_4_lut.INIT = "0x0aca";
    LUT4 i1_2_lut (.A(counter[19]), .B(counter[27]), .Z(n14_adj_115)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.INIT = "0xeeee";
    LUT4 i9_4_lut (.A(counter[29]), .B(counter[21]), .C(counter[30]), 
         .D(counter[22]), .Z(n22)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.INIT = "0xfffe";
    LUT4 counter_31__I_0_13_i5_4_lut (.A(counter[4]), .B(counter_31__N_33[4]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[4])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i5_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_13_i22_4_lut (.A(counter[21]), .B(counter_31__N_33[21]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[21])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i22_4_lut.INIT = "0x0aca";
    LUT4 i3_2_lut (.A(counter[25]), .B(counter[26]), .Z(n16_adj_114)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.INIT = "0xeeee";
    LUT4 counter_31__I_0_i34_4_lut (.A(n32), .B(counter[16]), .C(note_c_7), 
         .D(n18), .Z(n34)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+!(D)))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam counter_31__I_0_i34_4_lut.INIT = "0xe8ee";
    LUT4 counter_31__I_0_13_i32_4_lut (.A(counter[31]), .B(counter_31__N_33[31]), 
         .C(on_off_c), .D(counter_31__N_65), .Z(counter[31])) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   /* synthesis lineinfo="@0(38[3],46[10])"*/
    defparam counter_31__I_0_13_i32_4_lut.INIT = "0x0aca";
    LUT4 counter_31__I_0_i32_4_lut (.A(n30), .B(counter[15]), .C(note_c_7), 
         .D(n39), .Z(n32)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+!(D)))) */ ;   /* synthesis lineinfo="@0(39[8],39[28])"*/
    defparam counter_31__I_0_i32_4_lut.INIT = "0xe8ee";
    
endmodule

//
// Verilog Description of module rom_lut_default
//

module rom_lut_default (note_c_2, note_c_0, note_c_1, note_c_3, note_c_5, 
            n18, note_c_4, n7, note_c_6, n39, n44, n53, n43, 
            n41, n44_adj_1, n37, n40, n43_adj_2, n50, n40_adj_3, 
            n41_adj_4, n48, n45, n63, n46, note_c_7, n3932);
    input note_c_2;
    input note_c_0;
    input note_c_1;
    input note_c_3;
    input note_c_5;
    output n18;
    input note_c_4;
    output n7;
    input note_c_6;
    output n39;
    output n44;
    output n53;
    output n43;
    output n41;
    output n44_adj_1;
    output n37;
    output n40;
    output n43_adj_2;
    output n50;
    output n40_adj_3;
    output n41_adj_4;
    output n48;
    output n45;
    output n63;
    output n46;
    input note_c_7;
    output n3932;
    
    
    wire n50_c, n77, n2576, n71, n4115, n1783, n4189, n2509, 
        n2523, n2594, n4092, n4, n4093, n4095, n4730, n4181, 
        n36, n4177, n59, n4_adj_93, n4108, n4110, n4176, n4168, 
        n4105, n4682, n2592, n4160, n4158, n4183, n4669, n4146, 
        n4723, n35, n4145, n4102, n4668, n4138, n39_adj_94, n33, 
        n4_adj_95, n102, n4140, n4_adj_96, n4192, n4_adj_97, n46_c, 
        n4127, n4129, n4122, n4120, n74, n4715, n2586, n65, 
        n43_c, n4_adj_98, n38, n4_adj_99, n42, n52, n40_adj_106, 
        n4150;
    
    LUT4 i81_3_lut_4_lut_3_lut (.A(note_c_2), .B(note_c_0), .C(note_c_1), 
         .Z(n50_c)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;
    defparam i81_3_lut_4_lut_3_lut.INIT = "0xd2d2";
    LUT4 i101_3_lut (.A(n77), .B(n2576), .C(note_c_3), .Z(n71)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;
    defparam i101_3_lut.INIT = "0x3a3a";
    LUT4 i2992_4_lut (.A(note_c_3), .B(note_c_2), .C(note_c_0), .D(note_c_1), 
         .Z(n4115)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A (B ((D)+!C)))) */ ;
    defparam i2992_4_lut.INIT = "0x3bf3";
    LUT4 i30_4_lut (.A(n1783), .B(n4189), .C(note_c_5), .D(note_c_1), 
         .Z(n18)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i30_4_lut.INIT = "0xc0ca";
    LUT4 i1711_4_lut (.A(n2576), .B(n2509), .C(note_c_3), .D(n2523), 
         .Z(n2594)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam i1711_4_lut.INIT = "0xeeec";
    LUT4 i3002_4_lut (.A(n4092), .B(n4), .C(n4093), .D(note_c_3), .Z(n4095)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i3002_4_lut.INIT = "0xc088";
    LUT4 i1640_3_lut (.A(note_c_2), .B(note_c_1), .C(note_c_0), .Z(n2523)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1640_3_lut.INIT = "0xa8a8";
    LUT4 i3068_4_lut (.A(note_c_2), .B(n4730), .C(note_c_0), .D(note_c_1), 
         .Z(n4181)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+!(D)))) */ ;
    defparam i3068_4_lut.INIT = "0x1322";
    LUT4 i66_3_lut_3_lut (.A(note_c_1), .B(note_c_0), .C(note_c_2), .Z(n36)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;
    defparam i66_3_lut_3_lut.INIT = "0x3838";
    LUT4 i2979_4_lut (.A(note_c_0), .B(note_c_1), .C(note_c_3), .D(note_c_2), 
         .Z(n4177)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i2979_4_lut.INIT = "0xd5a6";
    LUT4 i3015_4_lut (.A(n59), .B(n4_adj_93), .C(note_c_1), .D(note_c_0), 
         .Z(n4108)) /* synthesis lut_function=(A (B)+!A !((C+(D))+!B)) */ ;
    defparam i3015_4_lut.INIT = "0x888c";
    LUT4 i3037_3_lut (.A(note_c_1), .B(note_c_2), .C(note_c_0), .Z(n4110)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;
    defparam i3037_3_lut.INIT = "0xdcdc";
    LUT4 i2977_3_lut (.A(note_c_2), .B(note_c_0), .C(note_c_1), .Z(n4092)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam i2977_3_lut.INIT = "0x3232";
    LUT4 i2978_4_lut (.A(n50_c), .B(n2509), .C(n2576), .D(note_c_3), 
         .Z(n4176)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;
    defparam i2978_4_lut.INIT = "0x0322";
    LUT4 i2_2_lut_3_lut (.A(note_c_5), .B(note_c_4), .C(note_c_3), .Z(n7)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_2_lut_3_lut.INIT = "0x0808";
    LUT4 i2980_4_lut (.A(note_c_1), .B(note_c_2), .C(note_c_3), .D(note_c_0), 
         .Z(n4168)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B ((D)+!C)))) */ ;
    defparam i2980_4_lut.INIT = "0x6eae";
    LUT4 i3010_4_lut (.A(note_c_3), .B(note_c_2), .C(note_c_0), .D(note_c_1), 
         .Z(n4105)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C))+!A (B ((D)+!C)+!B !(D)))) */ ;
    defparam i3010_4_lut.INIT = "0x1bc2";
    LUT4 i1709_4_lut (.A(n2576), .B(n2509), .C(note_c_3), .D(n4682), 
         .Z(n2592)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam i1709_4_lut.INIT = "0xeeec";
    LUT4 i113_rep_76_2_lut (.A(note_c_0), .B(note_c_2), .Z(n4682)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i113_rep_76_2_lut.INIT = "0x6666";
    LUT4 i3050_4_lut (.A(note_c_2), .B(note_c_0), .C(note_c_1), .D(note_c_3), 
         .Z(n4160)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+(D))+!B !(D))) */ ;
    defparam i3050_4_lut.INIT = "0xe4fb";
    LUT4 i2981_4_lut (.A(note_c_2), .B(note_c_3), .C(note_c_1), .D(n2509), 
         .Z(n4158)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(D)))) */ ;
    defparam i2981_4_lut.INIT = "0x0031";
    LUT4 i61_4_lut (.A(n4183), .B(n4669), .C(note_c_6), .D(n2509), .Z(n39)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i61_4_lut.INIT = "0x0aca";
    LUT4 i2986_2_lut_3_lut_4_lut (.A(note_c_2), .B(note_c_0), .C(note_c_6), 
         .D(note_c_4), .Z(n4146)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;
    defparam i2986_2_lut_3_lut_4_lut.INIT = "0x00d0";
    LUT4 i3014_4_lut (.A(n4723), .B(n4), .C(n35), .D(note_c_2), .Z(n4145)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i3014_4_lut.INIT = "0xc044";
    LUT4 i1667_rep_117_3_lut (.A(note_c_3), .B(note_c_1), .C(note_c_0), 
         .Z(n4723)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1667_rep_117_3_lut.INIT = "0xeaea";
    LUT4 i61_3_lut (.A(note_c_3), .B(note_c_1), .C(note_c_0), .Z(n35)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i61_3_lut.INIT = "0xcaca";
    LUT4 i2995_4_lut (.A(n36), .B(n2509), .C(n2576), .D(note_c_3), .Z(n4102)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C)))) */ ;
    defparam i2995_4_lut.INIT = "0x0323";
    LUT4 i2988_3_lut (.A(note_c_2), .B(note_c_0), .C(note_c_1), .Z(n4093)) /* synthesis lut_function=(A (B)+!A (B+!(C))) */ ;
    defparam i2988_3_lut.INIT = "0xcdcd";
    LUT4 i3035_4_lut (.A(note_c_3), .B(n4_adj_93), .C(n4668), .D(note_c_1), 
         .Z(n4138)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (D)))) */ ;
    defparam i3035_4_lut.INIT = "0x4c88";
    LUT4 i64_4_lut (.A(note_c_1), .B(n4730), .C(note_c_6), .D(n4_adj_93), 
         .Z(n39_adj_94)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i64_4_lut.INIT = "0x3530";
    LUT4 i1693_2_lut_3_lut (.A(note_c_2), .B(note_c_1), .C(note_c_0), 
         .Z(n2576)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1693_2_lut_3_lut.INIT = "0xfefe";
    LUT4 i3063_2_lut (.A(n33), .B(n4_adj_93), .Z(n4183)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3063_2_lut.INIT = "0x8888";
    LUT4 i102_4_lut (.A(n71), .B(n4095), .C(note_c_5), .D(n4_adj_95), 
         .Z(n102)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i102_4_lut.INIT = "0xcac0";
    LUT4 i99_3_lut (.A(note_c_0), .B(note_c_1), .C(note_c_2), .Z(n77)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+!(C))) */ ;
    defparam i99_3_lut.INIT = "0x9292";
    LUT4 i3072_4_lut (.A(note_c_1), .B(n2509), .C(note_c_3), .D(note_c_0), 
         .Z(n4140)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+((D)+!C)))) */ ;
    defparam i3072_4_lut.INIT = "0x0210";
    LUT4 i1680_rep_62_2_lut (.A(note_c_2), .B(note_c_0), .Z(n4668)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1680_rep_62_2_lut.INIT = "0x8888";
    LUT4 i3077_4_lut (.A(note_c_2), .B(n4_adj_96), .C(note_c_1), .D(note_c_0), 
         .Z(n4192)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)+!C !(D)))) */ ;
    defparam i3077_4_lut.INIT = "0xc084";
    LUT4 i3023_4_lut (.A(n4_adj_97), .B(n4_adj_93), .C(n46_c), .D(note_c_1), 
         .Z(n4127)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i3023_4_lut.INIT = "0xc8c0";
    LUT4 i3073_4_lut (.A(note_c_1), .B(note_c_3), .C(n2509), .D(note_c_0), 
         .Z(n4129)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+(C+(D))))) */ ;
    defparam i3073_4_lut.INIT = "0x0201";
    LUT4 i3061_4_lut_4_lut (.A(note_c_3), .B(note_c_2), .C(note_c_1), 
         .D(note_c_0), .Z(n4122)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C (D))+!B (C (D)+!C !(D))))) */ ;
    defparam i3061_4_lut_4_lut.INIT = "0x055e";
    LUT4 i1_4_lut (.A(note_c_3), .B(note_c_1), .C(note_c_2), .D(note_c_0), 
         .Z(n46_c)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C+!(D))))) */ ;
    defparam i1_4_lut.INIT = "0x1051";
    LUT4 i76_4_lut (.A(n4120), .B(n4122), .C(note_c_5), .D(n4), .Z(n74)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i76_4_lut.INIT = "0xca0a";
    LUT4 i1689_rep_109_2_lut (.A(note_c_2), .B(note_c_1), .Z(n4715)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1689_rep_109_2_lut.INIT = "0x8888";
    LUT4 i2982_3_lut (.A(note_c_1), .B(n1783), .C(note_c_0), .Z(n4120)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;
    defparam i2982_3_lut.INIT = "0x4c4c";
    LUT4 i97_4_lut (.A(n4_adj_93), .B(n2586), .C(note_c_6), .D(note_c_2), 
         .Z(n65)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i97_4_lut.INIT = "0x3a30";
    LUT4 i59_rep_63_4_lut (.A(note_c_2), .B(n2576), .C(note_c_3), .D(note_c_1), 
         .Z(n4669)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i59_rep_63_4_lut.INIT = "0x3f3a";
    LUT4 i71_3_lut (.A(note_c_2), .B(note_c_1), .C(note_c_0), .Z(n43_c)) /* synthesis lut_function=(A (C)+!A !(B (C))) */ ;
    defparam i71_3_lut.INIT = "0xb5b5";
    LUT4 i1_2_lut_3_lut (.A(note_c_6), .B(note_c_4), .C(note_c_5), .Z(n4_adj_98)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut.INIT = "0x4040";
    LUT4 i71_4_lut (.A(n38), .B(n4181), .C(note_c_6), .D(n4_adj_93), 
         .Z(n44)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i71_4_lut.INIT = "0xcac0";
    LUT4 i1626_2_lut (.A(note_c_5), .B(note_c_4), .Z(n2509)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1626_2_lut.INIT = "0xeeee";
    LUT4 i1_2_lut (.A(note_c_2), .B(note_c_0), .Z(n4_adj_99)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut.INIT = "0x2222";
    LUT4 i1_2_lut_3_lut_4_lut (.A(note_c_3), .B(note_c_2), .C(note_c_6), 
         .D(note_c_4), .Z(n1783)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.INIT = "0x0010";
    LUT4 i65_4_lut_4_lut (.A(note_c_0), .B(note_c_1), .C(note_c_2), .D(note_c_3), 
         .Z(n42)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A !(B (C (D)+!C !(D))+!B (C (D))))) */ ;
    defparam i65_4_lut_4_lut.INIT = "0x5806";
    LUT4 i82_4_lut (.A(n4177), .B(n4176), .C(note_c_6), .D(n4_adj_93), 
         .Z(n53)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i82_4_lut.INIT = "0xcac0";
    LUT4 i1_2_lut_adj_2 (.A(note_c_0), .B(note_c_2), .Z(n4_adj_97)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_2.INIT = "0x2222";
    LUT4 i1_2_lut_adj_3 (.A(note_c_6), .B(note_c_4), .Z(n4)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_3.INIT = "0x4444";
    LUT4 i68_4_lut (.A(n4168), .B(n2592), .C(note_c_6), .D(n4_adj_93), 
         .Z(n43)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i68_4_lut.INIT = "0x3a30";
    LUT4 i1_2_lut_adj_4 (.A(note_c_5), .B(note_c_4), .Z(n4_adj_93)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_4.INIT = "0x8888";
    LUT4 i1_2_lut_adj_5 (.A(note_c_6), .B(note_c_4), .Z(n4_adj_95)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_5.INIT = "0x2222";
    LUT4 i1703_2_lut_3_lut_4_lut (.A(note_c_3), .B(note_c_2), .C(note_c_5), 
         .D(note_c_4), .Z(n2586)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1703_2_lut_3_lut_4_lut.INIT = "0xfffe";
    LUT4 i58_4_lut (.A(n4160), .B(n4158), .C(note_c_6), .D(n4_adj_93), 
         .Z(n41)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i58_4_lut.INIT = "0xcac0";
    LUT4 i62_4_lut_4_lut (.A(note_c_3), .B(note_c_1), .C(note_c_0), .D(note_c_2), 
         .Z(n59)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D)+!C !(D))+!B !(D))) */ ;
    defparam i62_4_lut_4_lut.INIT = "0xea1f";
    LUT4 i1699_rep_124_2_lut_3_lut (.A(note_c_3), .B(note_c_5), .C(note_c_4), 
         .Z(n4730)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1699_rep_124_2_lut_3_lut.INIT = "0xfefe";
    LUT4 i60_4_lut (.A(n4146), .B(n4145), .C(note_c_5), .D(note_c_3), 
         .Z(n44_adj_1)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i60_4_lut.INIT = "0xc0ca";
    LUT4 i56_4_lut (.A(n4138), .B(n4140), .C(note_c_6), .D(note_c_2), 
         .Z(n37)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i56_4_lut.INIT = "0x0aca";
    LUT4 i69_4_lut_4_lut (.A(note_c_0), .B(note_c_3), .C(note_c_2), .D(note_c_1), 
         .Z(n38)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A (B (D)+!B !((D)+!C)))) */ ;
    defparam i69_4_lut_4_lut.INIT = "0x3bc5";
    LUT4 i31_4_lut (.A(n4669), .B(n4192), .C(note_c_5), .D(n4_adj_95), 
         .Z(n40)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i31_4_lut.INIT = "0xcac0";
    LUT4 i62_4_lut (.A(n4127), .B(n4129), .C(note_c_6), .D(note_c_2), 
         .Z(n43_adj_2)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i62_4_lut.INIT = "0xca0a";
    LUT4 i1_4_lut_adj_6 (.A(note_c_0), .B(n74), .C(n52), .D(n4715), 
         .Z(n50)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_6.INIT = "0xeccc";
    LUT4 i75_4_lut_4_lut (.A(note_c_5), .B(note_c_4), .C(note_c_3), .D(note_c_6), 
         .Z(n52)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B+(C+!(D))))) */ ;
    defparam i75_4_lut_4_lut.INIT = "0x0188";
    LUT4 i1_2_lut_3_lut_adj_7 (.A(note_c_3), .B(note_c_6), .C(note_c_4), 
         .Z(n4_adj_96)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_7.INIT = "0x2020";
    LUT4 i60_4_lut_adj_8 (.A(n4115), .B(n2594), .C(note_c_6), .D(n4_adj_93), 
         .Z(n40_adj_3)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i60_4_lut_adj_8.INIT = "0x3a30";
    LUT4 i64_4_lut_adj_9 (.A(n4108), .B(n4110), .C(note_c_6), .D(n4730), 
         .Z(n41_adj_4)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i64_4_lut_adj_9.INIT = "0x0aca";
    LUT4 i73_4_lut (.A(n4105), .B(n4102), .C(note_c_6), .D(n4_adj_93), 
         .Z(n48)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i73_4_lut.INIT = "0xcac0";
    LUT4 i1_4_lut_adj_10 (.A(n39_adj_94), .B(n42), .C(n4_adj_99), .D(n4_adj_98), 
         .Z(n45)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_10.INIT = "0xeca0";
    LUT4 i1_4_lut_adj_11 (.A(note_c_1), .B(n102), .C(note_c_0), .D(n65), 
         .Z(n63)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_11.INIT = "0xcecc";
    LUT4 i72_4_lut (.A(n40_adj_106), .B(n4150), .C(note_c_6), .D(n4_adj_93), 
         .Z(n46)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i72_4_lut.INIT = "0xcac0";
    LUT4 i70_4_lut (.A(note_c_3), .B(note_c_2), .C(note_c_0), .D(note_c_1), 
         .Z(n40_adj_106)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A !(C))) */ ;
    defparam i70_4_lut.INIT = "0x5a7a";
    LUT4 i2984_4_lut (.A(n43_c), .B(n2509), .C(n2576), .D(note_c_3), 
         .Z(n4150)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C)))) */ ;
    defparam i2984_4_lut.INIT = "0x0323";
    LUT4 i60_4_lut_adj_12 (.A(note_c_0), .B(note_c_2), .C(note_c_3), .D(note_c_1), 
         .Z(n33)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (D))+!A (B (C+!(D))+!B !(C+!(D))))) */ ;
    defparam i60_4_lut_adj_12.INIT = "0x1c33";
    LUT4 i2764_4_lut (.A(note_c_7), .B(note_c_2), .C(note_c_6), .D(note_c_1), 
         .Z(n3932)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;
    defparam i2764_4_lut.INIT = "0xfefa";
    LUT4 i3008_4_lut (.A(note_c_2), .B(n4), .C(note_c_3), .D(note_c_1), 
         .Z(n4189)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i3008_4_lut.INIT = "0xc8c0";
    
endmodule
