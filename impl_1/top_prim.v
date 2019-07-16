// Verilog netlist produced by program LSE :  version Radiant (64-bit) 1.0.0.350.6
// Netlist written on Sat Apr 27 14:35:59 2019
// Source file index table: 
// Object locations will have the form @<file_index>(<first_ line>[<left_column>],<last_line>[<right_column>])
// file 0 "c:/users/ellesh01/desktop/midi_final_proj_2/midi_interpreter.vhd"
// file 1 "c:/users/ellesh01/desktop/midi_final_proj_2/midi_reciever.vhd"
// file 2 "c:/users/ellesh01/desktop/midi_final_proj_2/play_note.vhd"
// file 3 "c:/users/ellesh01/desktop/midi_final_proj_2/pll/rtl/pll.v"
// file 4 "c:/users/ellesh01/desktop/midi_final_proj_2/rom_lut.vhd"
// file 5 "c:/users/ellesh01/desktop/midi_final_proj_2/top.vhd"
// file 6 "c:/lscc/radiant/1.0/ip/pmi/pmi.v"
// file 7 "c:/lscc/radiant/1.0/ip/pmi/pmi.vhd"
// file 8 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ccu2_b.v"
// file 9 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/fd1p3bz.v"
// file 10 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/fd1p3dz.v"
// file 11 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/fd1p3iz.v"
// file 12 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/fd1p3jz.v"
// file 13 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/hsosc.v"
// file 14 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/hsosc1p8v.v"
// file 15 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ib.v"
// file 16 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ifd1p3az.v"
// file 17 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/lsosc.v"
// file 18 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/lsosc1p8v.v"
// file 19 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ob.v"
// file 20 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/obz_b.v"
// file 21 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/ofd1p3az.v"
// file 22 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/pdp4k.v"
// file 23 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/rgb.v"
// file 24 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/rgb1p8v.v"
// file 25 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/sp256k.v"
// file 26 "c:/lscc/radiant/1.0/cae_library/simulation/verilog/ice40up/legacy.v"
// file 27 "c:/lscc/radiant/1.0/ip/common/adder/rtl/lscc_adder.v"
// file 28 "c:/lscc/radiant/1.0/ip/common/complex_mult/rtl/lscc_complex_mult.v"
// file 29 "c:/lscc/radiant/1.0/ip/common/mult_accumulate/rtl/lscc_mult_accumulate.v"
// file 30 "c:/lscc/radiant/1.0/ip/common/mult_add_sub/rtl/lscc_mult_add_sub.v"
// file 31 "c:/lscc/radiant/1.0/ip/common/multiplier/rtl/lscc_multiplier.v"
// file 32 "c:/lscc/radiant/1.0/ip/common/ram_dp/rtl/lscc_ram_dp.v"
// file 33 "c:/lscc/radiant/1.0/ip/common/ram_dq/rtl/lscc_ram_dq.v"
// file 34 "c:/lscc/radiant/1.0/ip/common/subtractor/rtl/lscc_subtractor.v"
// file 35 "c:/lscc/radiant/1.0/ip/pmi/pmi_add.v"
// file 36 "c:/lscc/radiant/1.0/ip/pmi/pmi_complex_mult.v"
// file 37 "c:/lscc/radiant/1.0/ip/pmi/pmi_dsp.v"
// file 38 "c:/lscc/radiant/1.0/ip/pmi/pmi_mac.v"
// file 39 "c:/lscc/radiant/1.0/ip/pmi/pmi_mult.v"
// file 40 "c:/lscc/radiant/1.0/ip/pmi/pmi_multaddsub.v"
// file 41 "c:/lscc/radiant/1.0/ip/pmi/pmi_ram_dp.v"
// file 42 "c:/lscc/radiant/1.0/ip/pmi/pmi_ram_dq.v"
// file 43 "c:/lscc/radiant/1.0/ip/pmi/pmi_sub.v"
// file 44 "c:/users/ellesh01/desktop/midi_final_proj_2/pll/rtl/core/lscc_pll.v"

//
// Verilog Description of module top
//

module top (serial, sample);   /* synthesis lineinfo="@5(5[8],5[11])"*/
    input serial;   /* synthesis lineinfo="@5(7[3],7[9])"*/
    output sample;   /* synthesis lineinfo="@5(8[3],8[9])"*/
    
    wire inputclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(76[10],76[18])"*/
    wire outclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(77[10],77[16])"*/
    
    wire serial_c, sample_c;
    wire [7:0]byte_sig;   /* synthesis lineinfo="@5(73[10],73[18])"*/
    wire [7:0]note_sig;   /* synthesis lineinfo="@5(74[10],74[18])"*/
    
    wire valid_sig, on_off_sig, GND_net;
    wire [1:0]tracker;   /* synthesis lineinfo="@1(21[10],21[17])"*/
    
    wire data;
    wire [9:0]clock_counter;   /* synthesis lineinfo="@1(26[10],26[23])"*/
    wire [2:0]bit_index;   /* synthesis lineinfo="@1(27[10],27[19])"*/
    
    wire n886, n3265, n171, n883;
    wire [1:0]tracker_adj_216;   /* synthesis lineinfo="@0(24[10],24[17])"*/
    wire [7:0]status_byte;   /* synthesis lineinfo="@0(26[10],26[21])"*/
    
    wire n621, n799, n666, VCC_net, n3174, n616, n650, n3267, 
        n4, n3271, n4_adj_212, n4_adj_213, n626, n738, n3176, 
        n3178, n3180, n3182, n849, n848, n847, n846, n845, n844, 
        n843, n1398, n3264, n3434, n3511, n3436, n3122, n3347, 
        n3162, n3172, n3188, n3194;
    
    VLO i1 (.Z(GND_net));
    OB sample_pad (.I(sample_c), .O(sample));   /* synthesis lineinfo="@5(8[3],8[9])"*/
    play_note sound_out (.on_off_sig(on_off_sig), .inputclk(inputclk), .sample_c(sample_c), 
            .GND_net(GND_net), .\note_sig[6] (note_sig[6]), .\note_sig[0] (note_sig[0]), 
            .\note_sig[2] (note_sig[2]), .\note_sig[1] (note_sig[1]), .\note_sig[5] (note_sig[5]), 
            .\note_sig[3] (note_sig[3]), .\note_sig[4] (note_sig[4]));   /* synthesis lineinfo="@5(112[14],112[23])"*/
    LUT4 i773_3_lut (.A(n799), .B(bit_index[0]), .C(n650), .Z(n886)) /* synthesis lut_function=(!(A+(B (C)+!B !(C)))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i773_3_lut.INIT = "0x1414";
    IB serial_pad (.I(serial), .O(serial_c));   /* synthesis lineinfo="@5(7[3],7[9])"*/
    LUT4 i145_4_lut (.A(n3434), .B(n3436), .C(tracker[1]), .D(n3267), 
         .Z(n171)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C)+!B !((D)+!C))) */ ;   /* synthesis lineinfo="@1(21[10],21[17])"*/
    defparam i145_4_lut.INIT = "0xcafa";
    LUT4 i12_4_lut_4_lut (.A(tracker_adj_216[1]), .B(byte_sig[7]), .C(valid_sig), 
         .D(tracker_adj_216[0]), .Z(n3188)) /* synthesis lut_function=(!(A (C)+!A (B+!(C (D))))) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i12_4_lut_4_lut.INIT = "0x1a0a";
    midi_interpreter midi_parse (.n3122(n3122), .\note_sig[0] (note_sig[0]), 
            .outclk(outclk), .n3194(n3194), .on_off_sig(on_off_sig), .n3188(n3188), 
            .tracker({tracker_adj_216}), .n3182(n3182), .\note_sig[1] (note_sig[1]), 
            .n3180(n3180), .\note_sig[2] (note_sig[2]), .n3178(n3178), 
            .\note_sig[3] (note_sig[3]), .n3176(n3176), .\note_sig[4] (note_sig[4]), 
            .n3174(n3174), .\note_sig[5] (note_sig[5]), .n3172(n3172), 
            .\note_sig[6] (note_sig[6]), .n3162(n3162), .\status_byte[4] (status_byte[4]), 
            .valid_sig(valid_sig), .n3264(n3264), .\byte_sig[7] (byte_sig[7]), 
            .n3265(n3265), .n666(n666), .n738(n738));   /* synthesis lineinfo="@5(97[15],97[31])"*/
    LUT4 i3336_4_lut (.A(n3347), .B(tracker[0]), .C(n3267), .D(n626), 
         .Z(n3434)) /* synthesis lut_function=(A (B)+!A (B ((D)+!C))) */ ;   /* synthesis lineinfo="@1(21[10],21[17])"*/
    defparam i3336_4_lut.INIT = "0xcc8c";
    LUT4 i770_4_lut (.A(data), .B(byte_sig[0]), .C(n4), .D(n621), .Z(n883)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i770_4_lut.INIT = "0xccca";
    LUT4 i3282_4_lut (.A(n3347), .B(n626), .C(n3271), .D(tracker[0]), 
         .Z(n3436)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;   /* synthesis lineinfo="@1(21[10],21[17])"*/
    defparam i3282_4_lut.INIT = "0xfcee";
    LUT4 i734_4_lut (.A(data), .B(byte_sig[5]), .C(n4_adj_212), .D(n616), 
         .Z(n847)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i734_4_lut.INIT = "0xccca";
    LUT4 i733_4_lut (.A(data), .B(byte_sig[4]), .C(n4_adj_212), .D(n621), 
         .Z(n846)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i733_4_lut.INIT = "0xccca";
    LUT4 i732_4_lut (.A(data), .B(byte_sig[3]), .C(n4_adj_213), .D(n616), 
         .Z(n845)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i732_4_lut.INIT = "0xccca";
    LUT4 i11_4_lut (.A(note_sig[5]), .B(byte_sig[5]), .C(n666), .D(n738), 
         .Z(n3174)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i11_4_lut.INIT = "0xca0a";
    LUT4 i11_4_lut_adj_12 (.A(note_sig[0]), .B(byte_sig[0]), .C(n666), 
         .D(n738), .Z(n3122)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i11_4_lut_adj_12.INIT = "0xca0a";
    LUT4 i11_4_lut_adj_13 (.A(note_sig[6]), .B(byte_sig[6]), .C(n666), 
         .D(n738), .Z(n3172)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i11_4_lut_adj_13.INIT = "0xca0a";
    LUT4 i731_4_lut (.A(data), .B(byte_sig[2]), .C(n4_adj_213), .D(n621), 
         .Z(n844)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i731_4_lut.INIT = "0xccca";
    LUT4 i730_4_lut (.A(data), .B(byte_sig[1]), .C(n4), .D(n616), .Z(n843)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i730_4_lut.INIT = "0xccca";
    LUT4 i12_4_lut (.A(status_byte[4]), .B(n3511), .C(n3264), .D(byte_sig[4]), 
         .Z(n3162)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i12_4_lut.INIT = "0xca0a";
    LUT4 i3342_2_lut (.A(tracker_adj_216[1]), .B(byte_sig[7]), .Z(n3511)) /* synthesis lut_function=(!(A+!(B))) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i3342_2_lut.INIT = "0x4444";
    LUT4 i12_4_lut_adj_14 (.A(on_off_sig), .B(status_byte[4]), .C(n3265), 
         .D(n738), .Z(n3194)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i12_4_lut_adj_14.INIT = "0xca0a";
    LUT4 i3117_4_lut_4_lut (.A(clock_counter[1]), .B(clock_counter[0]), 
         .C(clock_counter[4]), .D(clock_counter[9]), .Z(n3347)) /* synthesis lut_function=((B (C+!(D))+!B ((D)+!C))+!A) */ ;   /* synthesis lineinfo="@1(26[10],26[23])"*/
    defparam i3117_4_lut_4_lut.INIT = "0xf7df";
    \midi_reciever(996)  midi_in (.n626(n626), .tracker({tracker}), .outclk(outclk), 
            .data(data), .\bit_index[0] (bit_index[0]), .n886(n886), .n650(n650), 
            .n799(n799), .n883(n883), .byte_sig({byte_sig}), .valid_sig(valid_sig), 
            .\clock_counter[1] (clock_counter[1]), .\clock_counter[4] (clock_counter[4]), 
            .\clock_counter[9] (clock_counter[9]), .n849(n849), .n848(n848), 
            .n847(n847), .n846(n846), .n845(n845), .n844(n844), .n843(n843), 
            .\clock_counter[0] (clock_counter[0]), .serial_c(serial_c), 
            .n3271(n3271), .n616(n616), .GND_net(GND_net), .n621(n621), 
            .n4(n4), .n4_adj_1(n4_adj_212), .n4_adj_2(n4_adj_213), .n171(n171), 
            .n3267(n3267), .n1398(n1398));   /* synthesis lineinfo="@5(87[12],87[25])"*/
    LUT4 i12_4_lut_adj_15 (.A(note_sig[1]), .B(byte_sig[1]), .C(n666), 
         .D(n738), .Z(n3182)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i12_4_lut_adj_15.INIT = "0xca0a";
    LUT4 i12_4_lut_adj_16 (.A(note_sig[2]), .B(byte_sig[2]), .C(n666), 
         .D(n738), .Z(n3180)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i12_4_lut_adj_16.INIT = "0xca0a";
    LUT4 i11_4_lut_adj_17 (.A(note_sig[3]), .B(byte_sig[3]), .C(n666), 
         .D(n738), .Z(n3178)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i11_4_lut_adj_17.INIT = "0xca0a";
    LUT4 i736_4_lut (.A(data), .B(byte_sig[7]), .C(n1398), .D(n616), 
         .Z(n849)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B ((D)+!C))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i736_4_lut.INIT = "0xccac";
    LUT4 i11_4_lut_adj_18 (.A(note_sig[4]), .B(byte_sig[4]), .C(n666), 
         .D(n738), .Z(n3176)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i11_4_lut_adj_18.INIT = "0xca0a";
    LUT4 i735_4_lut (.A(data), .B(byte_sig[6]), .C(n1398), .D(n621), 
         .Z(n848)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B ((D)+!C))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i735_4_lut.INIT = "0xccac";
    HSOSC_CORE CLKSIG (.CLKHFPU(VCC_net), .CLKHFEN(VCC_net), .TRIM9(GND_net), 
            .TRIM8(GND_net), .TRIM7(GND_net), .TRIM6(GND_net), .TRIM5(GND_net), 
            .TRIM4(GND_net), .TRIM3(GND_net), .TRIM2(GND_net), .TRIM1(GND_net), 
            .TRIM0(GND_net), .CLKHF(inputclk)) /* synthesis syn_instantiated=1 */ ;
    defparam CLKSIG.CLKHF_DIV = "0b00";
    defparam CLKSIG.FABRIC_TRIME = "DISABLE";
    pll baud_sync (.GND_net(GND_net), .inputclk(inputclk), .outclk(outclk));   /* synthesis lineinfo="@5(85[16],85[19])"*/
    VHI i3557 (.Z(VCC_net));
    
endmodule

//
// Verilog Description of module play_note
//

module play_note (on_off_sig, inputclk, sample_c, GND_net, \note_sig[6] , 
            \note_sig[0] , \note_sig[2] , \note_sig[1] , \note_sig[5] , 
            \note_sig[3] , \note_sig[4] );
    input on_off_sig;
    input inputclk;
    output sample_c;
    input GND_net;
    input \note_sig[6] ;
    input \note_sig[0] ;
    input \note_sig[2] ;
    input \note_sig[1] ;
    input \note_sig[5] ;
    input \note_sig[3] ;
    input \note_sig[4] ;
    
    wire inputclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(76[10],76[18])"*/
    wire [31:0]n133;
    wire [31:0]counter;   /* synthesis lineinfo="@2(18[8],18[15])"*/
    
    wire n776, n20;
    wire [31:0]frequency;   /* synthesis lineinfo="@2(19[8],19[17])"*/
    
    wire n22, n18, n16, n14, n12, n2861, n74, n10, n8, n6, 
        n4, n40, n2857, sample_N_170, n22_adj_205, n16_adj_206, 
        n2698, n4022, n2700, n2696, n4019, n2678, n3974, n2680, 
        n2670, n3959, n2672, n2694, n4016, n2692, n4013, n2676, 
        n3971, n2690, n3992, n2674, n3965, n3962, n2688, n3989, 
        n2686, n3986, n3956, VCC_net, n2684, n3983, n2682, n3980, 
        n3977, n4025, sample_N_171, n23, n36, n24, n14_adj_207, 
        n34, n3350, n6_adj_208, n32, n30, n28, n26, n24_adj_209, 
        GND_net_c;
    
    FD1P3XZ counter_192__i5 (.D(n133[5]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[5]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i5.REGSET = "RESET";
    defparam counter_192__i5.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i4 (.D(n133[4]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[4]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i4.REGSET = "RESET";
    defparam counter_192__i4.SRMODE = "CE_OVER_LSR";
    LUT4 counter_31__I_0_i22_3_lut (.A(n20), .B(counter[10]), .C(frequency[10]), 
         .Z(n22)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i22_3_lut.INIT = "0x8e8e";
    FD1P3XZ counter_192__i3 (.D(n133[3]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[3]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i3.REGSET = "RESET";
    defparam counter_192__i3.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i22 (.D(n133[22]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[22]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i22.REGSET = "RESET";
    defparam counter_192__i22.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i2 (.D(n133[2]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[2]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i2.REGSET = "RESET";
    defparam counter_192__i2.SRMODE = "CE_OVER_LSR";
    LUT4 counter_31__I_0_i20_3_lut (.A(n18), .B(counter[9]), .C(frequency[9]), 
         .Z(n20)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i20_3_lut.INIT = "0x8e8e";
    FD1P3XZ counter_192__i1 (.D(n133[1]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[1]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i1.REGSET = "RESET";
    defparam counter_192__i1.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i21 (.D(n133[21]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[21]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i21.REGSET = "RESET";
    defparam counter_192__i21.SRMODE = "CE_OVER_LSR";
    LUT4 counter_31__I_0_i18_3_lut (.A(n16), .B(counter[8]), .C(frequency[8]), 
         .Z(n18)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i18_3_lut.INIT = "0x8e8e";
    FD1P3XZ counter_192__i9 (.D(n133[9]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[9]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i9.REGSET = "RESET";
    defparam counter_192__i9.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i8 (.D(n133[8]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[8]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i8.REGSET = "RESET";
    defparam counter_192__i8.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i20 (.D(n133[20]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[20]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i20.REGSET = "RESET";
    defparam counter_192__i20.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i19 (.D(n133[19]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[19]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i19.REGSET = "RESET";
    defparam counter_192__i19.SRMODE = "CE_OVER_LSR";
    LUT4 counter_31__I_0_i16_3_lut (.A(n14), .B(counter[7]), .C(frequency[7]), 
         .Z(n16)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i16_3_lut.INIT = "0x8e8e";
    LUT4 counter_31__I_0_i14_4_lut (.A(n12), .B(counter[6]), .C(n2861), 
         .D(n74), .Z(n14)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !((C+(D))+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i14_4_lut.INIT = "0x888e";
    LUT4 counter_31__I_0_i12_3_lut (.A(n10), .B(counter[5]), .C(frequency[5]), 
         .Z(n12)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i12_3_lut.INIT = "0x8e8e";
    LUT4 counter_31__I_0_i10_3_lut (.A(n8), .B(counter[4]), .C(frequency[4]), 
         .Z(n10)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i10_3_lut.INIT = "0x8e8e";
    LUT4 counter_31__I_0_i8_3_lut (.A(n6), .B(counter[3]), .C(frequency[3]), 
         .Z(n8)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i8_3_lut.INIT = "0x8e8e";
    FD1P3XZ counter_192__i18 (.D(n133[18]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[18]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i18.REGSET = "RESET";
    defparam counter_192__i18.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i17 (.D(n133[17]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[17]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i17.REGSET = "RESET";
    defparam counter_192__i17.SRMODE = "CE_OVER_LSR";
    LUT4 counter_31__I_0_i6_4_lut (.A(n4), .B(counter[2]), .C(n40), .D(n2857), 
         .Z(n6)) /* synthesis lut_function=(A (B+!(C+(D)))+!A !((C+(D))+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i6_4_lut.INIT = "0x888e";
    LUT4 counter_31__I_0_i4_4_lut (.A(counter[0]), .B(counter[1]), .C(frequency[1]), 
         .D(frequency[0]), .Z(n4)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C (D))+!B (C+(D)))) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i4_4_lut.INIT = "0x8ecf";
    FD1P3XZ counter_192__i16 (.D(n133[16]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[16]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i16.REGSET = "RESET";
    defparam counter_192__i16.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i15 (.D(n133[15]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[15]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i15.REGSET = "RESET";
    defparam counter_192__i15.SRMODE = "CE_OVER_LSR";
    FD1P3XZ sample_sig_17 (.D(sample_N_170), .SP(on_off_sig), .CK(inputclk), 
            .SR(GND_net_c), .Q(sample_c));   /* synthesis lineinfo="@2(38[2],47[10])"*/
    defparam sample_sig_17.REGSET = "RESET";
    defparam sample_sig_17.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i0 (.D(n133[0]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[0]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i0.REGSET = "RESET";
    defparam counter_192__i0.SRMODE = "CE_OVER_LSR";
    LUT4 i9_4_lut (.A(counter[29]), .B(counter[21]), .C(counter[30]), 
         .D(counter[22]), .Z(n22_adj_205)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i9_4_lut.INIT = "0xfffe";
    LUT4 i3_2_lut (.A(counter[25]), .B(counter[26]), .Z(n16_adj_206)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3_2_lut.INIT = "0xeeee";
    FD1P3XZ counter_192__i14 (.D(n133[14]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[14]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i14.REGSET = "RESET";
    defparam counter_192__i14.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i13 (.D(n133[13]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[13]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i13.REGSET = "RESET";
    defparam counter_192__i13.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i31 (.D(n133[31]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[31]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i31.REGSET = "RESET";
    defparam counter_192__i31.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i12 (.D(n133[12]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[12]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i12.REGSET = "RESET";
    defparam counter_192__i12.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i30 (.D(n133[30]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[30]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i30.REGSET = "RESET";
    defparam counter_192__i30.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i11 (.D(n133[11]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[11]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i11.REGSET = "RESET";
    defparam counter_192__i11.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i29 (.D(n133[29]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[29]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i29.REGSET = "RESET";
    defparam counter_192__i29.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i10 (.D(n133[10]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[10]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i10.REGSET = "RESET";
    defparam counter_192__i10.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i7 (.D(n133[7]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[7]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i7.REGSET = "RESET";
    defparam counter_192__i7.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i28 (.D(n133[28]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[28]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i28.REGSET = "RESET";
    defparam counter_192__i28.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i27 (.D(n133[27]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[27]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i27.REGSET = "RESET";
    defparam counter_192__i27.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i26 (.D(n133[26]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[26]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i26.REGSET = "RESET";
    defparam counter_192__i26.SRMODE = "CE_OVER_LSR";
    FA2 counter_192_add_4_31 (.A0(GND_net), .B0(GND_net), .C0(counter[29]), 
        .D0(n2698), .CI0(n2698), .A1(GND_net), .B1(GND_net), .C1(counter[30]), 
        .D1(n4022), .CI1(n4022), .CO0(n4022), .CO1(n2700), .S0(n133[29]), 
        .S1(n133[30]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192_add_4_31.INIT0 = "0xc33c";
    defparam counter_192_add_4_31.INIT1 = "0xc33c";
    FD1P3XZ counter_192__i25 (.D(n133[25]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[25]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i25.REGSET = "RESET";
    defparam counter_192__i25.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i23 (.D(n133[23]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[23]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i23.REGSET = "RESET";
    defparam counter_192__i23.SRMODE = "CE_OVER_LSR";
    FD1P3XZ counter_192__i24 (.D(n133[24]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[24]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i24.REGSET = "RESET";
    defparam counter_192__i24.SRMODE = "CE_OVER_LSR";
    FA2 counter_192_add_4_29 (.A0(GND_net), .B0(GND_net), .C0(counter[27]), 
        .D0(n2696), .CI0(n2696), .A1(GND_net), .B1(GND_net), .C1(counter[28]), 
        .D1(n4019), .CI1(n4019), .CO0(n4019), .CO1(n2698), .S0(n133[27]), 
        .S1(n133[28]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192_add_4_29.INIT0 = "0xc33c";
    defparam counter_192_add_4_29.INIT1 = "0xc33c";
    FA2 counter_192_add_4_11 (.A0(GND_net), .B0(GND_net), .C0(counter[9]), 
        .D0(n2678), .CI0(n2678), .A1(GND_net), .B1(GND_net), .C1(counter[10]), 
        .D1(n3974), .CI1(n3974), .CO0(n3974), .CO1(n2680), .S0(n133[9]), 
        .S1(n133[10]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192_add_4_11.INIT0 = "0xc33c";
    defparam counter_192_add_4_11.INIT1 = "0xc33c";
    FA2 counter_192_add_4_3 (.A0(GND_net), .B0(GND_net), .C0(counter[1]), 
        .D0(n2670), .CI0(n2670), .A1(GND_net), .B1(GND_net), .C1(counter[2]), 
        .D1(n3959), .CI1(n3959), .CO0(n3959), .CO1(n2672), .S0(n133[1]), 
        .S1(n133[2]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192_add_4_3.INIT0 = "0xc33c";
    defparam counter_192_add_4_3.INIT1 = "0xc33c";
    FA2 counter_192_add_4_27 (.A0(GND_net), .B0(GND_net), .C0(counter[25]), 
        .D0(n2694), .CI0(n2694), .A1(GND_net), .B1(GND_net), .C1(counter[26]), 
        .D1(n4016), .CI1(n4016), .CO0(n4016), .CO1(n2696), .S0(n133[25]), 
        .S1(n133[26]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192_add_4_27.INIT0 = "0xc33c";
    defparam counter_192_add_4_27.INIT1 = "0xc33c";
    FA2 counter_192_add_4_25 (.A0(GND_net), .B0(GND_net), .C0(counter[23]), 
        .D0(n2692), .CI0(n2692), .A1(GND_net), .B1(GND_net), .C1(counter[24]), 
        .D1(n4013), .CI1(n4013), .CO0(n4013), .CO1(n2694), .S0(n133[23]), 
        .S1(n133[24]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192_add_4_25.INIT0 = "0xc33c";
    defparam counter_192_add_4_25.INIT1 = "0xc33c";
    FA2 counter_192_add_4_9 (.A0(GND_net), .B0(GND_net), .C0(counter[7]), 
        .D0(n2676), .CI0(n2676), .A1(GND_net), .B1(GND_net), .C1(counter[8]), 
        .D1(n3971), .CI1(n3971), .CO0(n3971), .CO1(n2678), .S0(n133[7]), 
        .S1(n133[8]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192_add_4_9.INIT0 = "0xc33c";
    defparam counter_192_add_4_9.INIT1 = "0xc33c";
    FA2 counter_192_add_4_23 (.A0(GND_net), .B0(GND_net), .C0(counter[21]), 
        .D0(n2690), .CI0(n2690), .A1(GND_net), .B1(GND_net), .C1(counter[22]), 
        .D1(n3992), .CI1(n3992), .CO0(n3992), .CO1(n2692), .S0(n133[21]), 
        .S1(n133[22]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192_add_4_23.INIT0 = "0xc33c";
    defparam counter_192_add_4_23.INIT1 = "0xc33c";
    FA2 counter_192_add_4_7 (.A0(GND_net), .B0(GND_net), .C0(counter[5]), 
        .D0(n2674), .CI0(n2674), .A1(GND_net), .B1(GND_net), .C1(counter[6]), 
        .D1(n3965), .CI1(n3965), .CO0(n3965), .CO1(n2676), .S0(n133[5]), 
        .S1(n133[6]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192_add_4_7.INIT0 = "0xc33c";
    defparam counter_192_add_4_7.INIT1 = "0xc33c";
    FA2 counter_192_add_4_5 (.A0(GND_net), .B0(GND_net), .C0(counter[3]), 
        .D0(n2672), .CI0(n2672), .A1(GND_net), .B1(GND_net), .C1(counter[4]), 
        .D1(n3962), .CI1(n3962), .CO0(n3962), .CO1(n2674), .S0(n133[3]), 
        .S1(n133[4]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192_add_4_5.INIT0 = "0xc33c";
    defparam counter_192_add_4_5.INIT1 = "0xc33c";
    FA2 counter_192_add_4_21 (.A0(GND_net), .B0(GND_net), .C0(counter[19]), 
        .D0(n2688), .CI0(n2688), .A1(GND_net), .B1(GND_net), .C1(counter[20]), 
        .D1(n3989), .CI1(n3989), .CO0(n3989), .CO1(n2690), .S0(n133[19]), 
        .S1(n133[20]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192_add_4_21.INIT0 = "0xc33c";
    defparam counter_192_add_4_21.INIT1 = "0xc33c";
    FA2 counter_192_add_4_19 (.A0(GND_net), .B0(GND_net), .C0(counter[17]), 
        .D0(n2686), .CI0(n2686), .A1(GND_net), .B1(GND_net), .C1(counter[18]), 
        .D1(n3986), .CI1(n3986), .CO0(n3986), .CO1(n2688), .S0(n133[17]), 
        .S1(n133[18]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192_add_4_19.INIT0 = "0xc33c";
    defparam counter_192_add_4_19.INIT1 = "0xc33c";
    FA2 counter_192_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
        .A1(GND_net), .B1(VCC_net), .C1(counter[0]), .D1(n3956), .CI1(n3956), 
        .CO0(n3956), .CO1(n2670), .S1(n133[0]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192_add_4_1.INIT0 = "0xc33c";
    defparam counter_192_add_4_1.INIT1 = "0xc33c";
    FA2 counter_192_add_4_17 (.A0(GND_net), .B0(GND_net), .C0(counter[15]), 
        .D0(n2684), .CI0(n2684), .A1(GND_net), .B1(GND_net), .C1(counter[16]), 
        .D1(n3983), .CI1(n3983), .CO0(n3983), .CO1(n2686), .S0(n133[15]), 
        .S1(n133[16]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192_add_4_17.INIT0 = "0xc33c";
    defparam counter_192_add_4_17.INIT1 = "0xc33c";
    FA2 counter_192_add_4_15 (.A0(GND_net), .B0(GND_net), .C0(counter[13]), 
        .D0(n2682), .CI0(n2682), .A1(GND_net), .B1(GND_net), .C1(counter[14]), 
        .D1(n3980), .CI1(n3980), .CO0(n3980), .CO1(n2684), .S0(n133[13]), 
        .S1(n133[14]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192_add_4_15.INIT0 = "0xc33c";
    defparam counter_192_add_4_15.INIT1 = "0xc33c";
    FA2 counter_192_add_4_13 (.A0(GND_net), .B0(GND_net), .C0(counter[11]), 
        .D0(n2680), .CI0(n2680), .A1(GND_net), .B1(GND_net), .C1(counter[12]), 
        .D1(n3977), .CI1(n3977), .CO0(n3977), .CO1(n2682), .S0(n133[11]), 
        .S1(n133[12]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192_add_4_13.INIT0 = "0xc33c";
    defparam counter_192_add_4_13.INIT1 = "0xc33c";
    FA2 counter_192_add_4_33 (.A0(GND_net), .B0(GND_net), .C0(counter[31]), 
        .D0(n2700), .CI0(n2700), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
        .D1(n4025), .CI1(n4025), .CO0(n4025), .S0(n133[31]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192_add_4_33.INIT0 = "0xc33c";
    defparam counter_192_add_4_33.INIT1 = "0xc33c";
    LUT4 i663_2_lut (.A(on_off_sig), .B(sample_N_171), .Z(n776)) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam i663_2_lut.INIT = "0x8888";
    LUT4 i1277_4_lut (.A(n23), .B(counter[31]), .C(n36), .D(n24), .Z(sample_N_171)) /* synthesis lut_function=(!(A (B)+!A (B+!(C+(D))))) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam i1277_4_lut.INIT = "0x3332";
    LUT4 sample_I_0_2_lut (.A(sample_c), .B(sample_N_171), .Z(sample_N_170)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@2(40[4],45[11])"*/
    defparam sample_I_0_2_lut.INIT = "0x6666";
    LUT4 i10_4_lut (.A(counter[24]), .B(counter[20]), .C(counter[28]), 
         .D(n14_adj_207), .Z(n23)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i10_4_lut.INIT = "0xfffe";
    LUT4 counter_31__I_0_i36_4_lut (.A(n34), .B(counter[17]), .C(n3350), 
         .D(n6_adj_208), .Z(n36)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B (C+!(D)))) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i36_4_lut.INIT = "0xe8ee";
    LUT4 i11_4_lut (.A(counter[18]), .B(n22_adj_205), .C(n16_adj_206), 
         .D(counter[23]), .Z(n24)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i11_4_lut.INIT = "0xfffe";
    LUT4 i1_2_lut (.A(counter[19]), .B(counter[27]), .Z(n14_adj_207)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.INIT = "0xeeee";
    LUT4 counter_31__I_0_i34_3_lut (.A(n32), .B(counter[16]), .C(frequency[16]), 
         .Z(n34)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i34_3_lut.INIT = "0x8e8e";
    LUT4 counter_31__I_0_i32_3_lut (.A(n30), .B(counter[15]), .C(frequency[15]), 
         .Z(n32)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i32_3_lut.INIT = "0x8e8e";
    LUT4 counter_31__I_0_i30_3_lut (.A(n28), .B(counter[14]), .C(frequency[14]), 
         .Z(n30)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i30_3_lut.INIT = "0x8e8e";
    LUT4 counter_31__I_0_i28_3_lut (.A(n26), .B(counter[13]), .C(frequency[13]), 
         .Z(n28)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i28_3_lut.INIT = "0x8e8e";
    LUT4 counter_31__I_0_i26_3_lut (.A(n24_adj_209), .B(counter[12]), .C(frequency[12]), 
         .Z(n26)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i26_3_lut.INIT = "0x8e8e";
    LUT4 counter_31__I_0_i24_3_lut (.A(n22), .B(counter[11]), .C(frequency[11]), 
         .Z(n24_adj_209)) /* synthesis lut_function=(A (B+!(C))+!A !((C)+!B)) */ ;   /* synthesis lineinfo="@2(40[8],40[28])"*/
    defparam counter_31__I_0_i24_3_lut.INIT = "0x8e8e";
    rom_lut get_frequency (.\note_sig[6] (\note_sig[6] ), .\frequency[12] (frequency[12]), 
            .\note_sig[0] (\note_sig[0] ), .\note_sig[2] (\note_sig[2] ), 
            .\note_sig[1] (\note_sig[1] ), .\frequency[11] (frequency[11]), 
            .\note_sig[5] (\note_sig[5] ), .\note_sig[3] (\note_sig[3] ), 
            .\frequency[10] (frequency[10]), .\frequency[9] (frequency[9]), 
            .\frequency[8] (frequency[8]), .\frequency[7] (frequency[7]), 
            .n2861(n2861), .n74(n74), .\frequency[5] (frequency[5]), .\frequency[4] (frequency[4]), 
            .\frequency[3] (frequency[3]), .n40(n40), .n2857(n2857), .\frequency[1] (frequency[1]), 
            .\frequency[0] (frequency[0]), .\note_sig[4] (\note_sig[4] ), 
            .n6(n6_adj_208), .n3350(n3350), .\frequency[16] (frequency[16]), 
            .\frequency[15] (frequency[15]), .\frequency[14] (frequency[14]), 
            .\frequency[13] (frequency[13]));   /* synthesis lineinfo="@2(31[17],31[24])"*/
    VLO i18 (.Z(GND_net_c));
    FD1P3XZ counter_192__i6 (.D(n133[6]), .SP(on_off_sig), .CK(inputclk), 
            .SR(n776), .Q(counter[6]));   /* synthesis lineinfo="@2(44[16],44[23])"*/
    defparam counter_192__i6.REGSET = "RESET";
    defparam counter_192__i6.SRMODE = "CE_OVER_LSR";
    VHI i1 (.Z(VCC_net));
    
endmodule

//
// Verilog Description of module rom_lut
//

module rom_lut (\note_sig[6] , \frequency[12] , \note_sig[0] , \note_sig[2] , 
            \note_sig[1] , \frequency[11] , \note_sig[5] , \note_sig[3] , 
            \frequency[10] , \frequency[9] , \frequency[8] , \frequency[7] , 
            n2861, n74, \frequency[5] , \frequency[4] , \frequency[3] , 
            n40, n2857, \frequency[1] , \frequency[0] , \note_sig[4] , 
            n6, n3350, \frequency[16] , \frequency[15] , \frequency[14] , 
            \frequency[13] );
    input \note_sig[6] ;
    output \frequency[12] ;
    input \note_sig[0] ;
    input \note_sig[2] ;
    input \note_sig[1] ;
    output \frequency[11] ;
    input \note_sig[5] ;
    input \note_sig[3] ;
    output \frequency[10] ;
    output \frequency[9] ;
    output \frequency[8] ;
    output \frequency[7] ;
    output n2861;
    output n74;
    output \frequency[5] ;
    output \frequency[4] ;
    output \frequency[3] ;
    output n40;
    output n2857;
    output \frequency[1] ;
    output \frequency[0] ;
    input \note_sig[4] ;
    output n6;
    output n3350;
    output \frequency[16] ;
    output \frequency[15] ;
    output \frequency[14] ;
    output \frequency[13] ;
    
    
    wire n3454, n1435, n4, n3483, n3448, n3446, n3444, n3443, 
        n3439, n3441, n3788, n3505, n6_c, n50, n3432, n3429, 
        n52, n22, n3499, n613, n3497, n1441, n3489, n40_c, n3492, 
        n3494, n3839, n3486, n3484, n30, n4_adj_202, n36, n102, 
        n65, n1378, n1425, n3471, n71, n3463, n1429, n77, n3464, 
        n4_adj_203, n3465, n33, n3481, n3468, n3459, n3458, n43, 
        n3800, n3836, n35, n3785, n1368, n3431, n59, n3500, 
        n1408, n38, n3475;
    
    LUT4 i68_4_lut (.A(n3454), .B(n1435), .C(\note_sig[6] ), .D(n4), 
         .Z(\frequency[12] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i68_4_lut.INIT = "0x3a30";
    LUT4 i3308_3_lut (.A(\note_sig[0] ), .B(\note_sig[2] ), .C(\note_sig[1] ), 
         .Z(n3483)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;
    defparam i3308_3_lut.INIT = "0x1212";
    LUT4 i58_4_lut (.A(n3448), .B(n3446), .C(\note_sig[6] ), .D(n4), 
         .Z(\frequency[11] )) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i58_4_lut.INIT = "0xcac0";
    LUT4 i60_4_lut (.A(n3444), .B(n3443), .C(\note_sig[5] ), .D(\note_sig[3] ), 
         .Z(\frequency[10] )) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i60_4_lut.INIT = "0xc0ca";
    LUT4 i56_4_lut (.A(n3439), .B(n3441), .C(\note_sig[6] ), .D(\note_sig[2] ), 
         .Z(\frequency[9] )) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i56_4_lut.INIT = "0x0aca";
    LUT4 i21_4_lut (.A(n3788), .B(n3505), .C(\note_sig[5] ), .D(n6_c), 
         .Z(\frequency[8] )) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i21_4_lut.INIT = "0xcac0";
    LUT4 i81_3_lut_4_lut_3_lut (.A(\note_sig[2] ), .B(\note_sig[0] ), .C(\note_sig[1] ), 
         .Z(n50)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;
    defparam i81_3_lut_4_lut_3_lut.INIT = "0xd2d2";
    LUT4 i62_4_lut (.A(n3432), .B(n3429), .C(\note_sig[6] ), .D(n4), 
         .Z(\frequency[7] )) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i62_4_lut.INIT = "0xcac0";
    LUT4 i2_4_lut (.A(\note_sig[0] ), .B(n52), .C(\note_sig[2] ), .D(\note_sig[1] ), 
         .Z(n2861)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i2_4_lut.INIT = "0x8000";
    LUT4 i76_4_lut (.A(n22), .B(n3499), .C(\note_sig[5] ), .D(n613), 
         .Z(n74)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam i76_4_lut.INIT = "0xc5c0";
    LUT4 i60_4_lut_adj_5 (.A(n3497), .B(n1441), .C(\note_sig[6] ), .D(n4), 
         .Z(\frequency[5] )) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i60_4_lut_adj_5.INIT = "0x3a30";
    LUT4 i3313_4_lut (.A(\note_sig[3] ), .B(\note_sig[2] ), .C(\note_sig[0] ), 
         .D(\note_sig[1] ), .Z(n3489)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (C))+!A (B ((D)+!C)+!B !(D)))) */ ;
    defparam i3313_4_lut.INIT = "0x1bc2";
    LUT4 i70_4_lut (.A(\note_sig[3] ), .B(\note_sig[2] ), .C(\note_sig[0] ), 
         .D(\note_sig[1] ), .Z(n40_c)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A !(C))) */ ;
    defparam i70_4_lut.INIT = "0x5a7a";
    LUT4 i64_4_lut (.A(n3492), .B(n3494), .C(\note_sig[6] ), .D(n3839), 
         .Z(\frequency[4] )) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i64_4_lut.INIT = "0x0aca";
    LUT4 i73_4_lut (.A(n3489), .B(n3486), .C(\note_sig[6] ), .D(n4), 
         .Z(\frequency[3] )) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i73_4_lut.INIT = "0xcac0";
    LUT4 i2_4_lut_adj_6 (.A(n3484), .B(n30), .C(n3839), .D(\note_sig[6] ), 
         .Z(n40)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;
    defparam i2_4_lut_adj_6.INIT = "0x0c88";
    LUT4 i2_4_lut_adj_7 (.A(n3483), .B(n4_adj_202), .C(n36), .D(\note_sig[3] ), 
         .Z(n2857)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i2_4_lut_adj_7.INIT = "0xc088";
    LUT4 i1_4_lut (.A(\note_sig[1] ), .B(n102), .C(\note_sig[0] ), .D(n65), 
         .Z(\frequency[1] )) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;
    defparam i1_4_lut.INIT = "0xcecc";
    LUT4 i3326_4_lut (.A(n36), .B(n1378), .C(n1425), .D(\note_sig[3] ), 
         .Z(n3486)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C)))) */ ;
    defparam i3326_4_lut.INIT = "0x0323";
    LUT4 i72_4_lut (.A(n40_c), .B(n3471), .C(\note_sig[6] ), .D(n4), 
         .Z(\frequency[0] )) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i72_4_lut.INIT = "0xcac0";
    LUT4 i102_4_lut (.A(n71), .B(n3463), .C(\note_sig[5] ), .D(n6_c), 
         .Z(n102)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i102_4_lut.INIT = "0xcac0";
    LUT4 i97_4_lut (.A(n4), .B(n1429), .C(\note_sig[6] ), .D(\note_sig[2] ), 
         .Z(n65)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;
    defparam i97_4_lut.INIT = "0x3a30";
    LUT4 i101_3_lut (.A(n77), .B(n1425), .C(\note_sig[3] ), .Z(n71)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;
    defparam i101_3_lut.INIT = "0x3a3a";
    LUT4 i3285_4_lut (.A(n3464), .B(n4_adj_203), .C(n3465), .D(\note_sig[3] ), 
         .Z(n3463)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam i3285_4_lut.INIT = "0xc088";
    LUT4 i99_3_lut (.A(\note_sig[0] ), .B(\note_sig[1] ), .C(\note_sig[2] ), 
         .Z(n77)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B+!(C))) */ ;
    defparam i99_3_lut.INIT = "0x9292";
    LUT4 i60_4_lut_adj_8 (.A(\note_sig[0] ), .B(\note_sig[2] ), .C(\note_sig[3] ), 
         .D(\note_sig[1] ), .Z(n33)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (D))+!A (B (C+!(D))+!B !(C+!(D))))) */ ;
    defparam i60_4_lut_adj_8.INIT = "0x1c33";
    LUT4 i3311_4_lut (.A(\note_sig[2] ), .B(n4_adj_203), .C(\note_sig[3] ), 
         .D(\note_sig[1] ), .Z(n3481)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i3311_4_lut.INIT = "0xc8c0";
    LUT4 i75_4_lut_4_lut (.A(\note_sig[5] ), .B(\note_sig[4] ), .C(\note_sig[3] ), 
         .D(\note_sig[6] ), .Z(n52)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B+(C+!(D))))) */ ;
    defparam i75_4_lut_4_lut.INIT = "0x0188";
    LUT4 i3277_4_lut (.A(\note_sig[2] ), .B(n3839), .C(\note_sig[0] ), 
         .D(\note_sig[1] ), .Z(n3468)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+!(D)))) */ ;
    defparam i3277_4_lut.INIT = "0x1322";
    LUT4 i3299_4_lut (.A(\note_sig[0] ), .B(\note_sig[1] ), .C(\note_sig[3] ), 
         .D(\note_sig[2] ), .Z(n3459)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A (B ((D)+!C)+!B (D))) */ ;
    defparam i3299_4_lut.INIT = "0xd5a6";
    LUT4 i1317_3_lut_4_lut (.A(\note_sig[5] ), .B(\note_sig[4] ), .C(\note_sig[3] ), 
         .D(\note_sig[2] ), .Z(n1429)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1317_3_lut_4_lut.INIT = "0xfffe";
    LUT4 i1_2_lut_3_lut (.A(\note_sig[6] ), .B(\note_sig[4] ), .C(\note_sig[5] ), 
         .Z(n4_adj_202)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_2_lut_3_lut.INIT = "0x4040";
    LUT4 i3296_4_lut (.A(n50), .B(n1378), .C(n1425), .D(\note_sig[3] ), 
         .Z(n3458)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;
    defparam i3296_4_lut.INIT = "0x0322";
    LUT4 i3304_4_lut (.A(\note_sig[1] ), .B(\note_sig[2] ), .C(\note_sig[3] ), 
         .D(\note_sig[0] ), .Z(n3454)) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B ((D)+!C)))) */ ;
    defparam i3304_4_lut.INIT = "0x6eae";
    LUT4 i3275_4_lut (.A(n43), .B(n1378), .C(n1425), .D(\note_sig[3] ), 
         .Z(n3471)) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C)))) */ ;
    defparam i3275_4_lut.INIT = "0x0323";
    LUT4 i1302_rep_76_2_lut_3_lut (.A(\note_sig[3] ), .B(\note_sig[5] ), 
         .C(\note_sig[4] ), .Z(n3839)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1302_rep_76_2_lut_3_lut.INIT = "0xfefe";
    LUT4 i71_3_lut (.A(\note_sig[2] ), .B(\note_sig[1] ), .C(\note_sig[0] ), 
         .Z(n43)) /* synthesis lut_function=(A (C)+!A !(B (C))) */ ;
    defparam i71_3_lut.INIT = "0xb5b5";
    LUT4 i1323_4_lut (.A(n1425), .B(n1378), .C(\note_sig[3] ), .D(n3800), 
         .Z(n1435)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam i1323_4_lut.INIT = "0xeeec";
    LUT4 i113_rep_37_2_lut (.A(\note_sig[0] ), .B(\note_sig[2] ), .Z(n3800)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i113_rep_37_2_lut.INIT = "0x6666";
    LUT4 i3287_4_lut (.A(\note_sig[2] ), .B(\note_sig[0] ), .C(\note_sig[1] ), 
         .D(\note_sig[3] ), .Z(n3448)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+(D))+!B !(D))) */ ;
    defparam i3287_4_lut.INIT = "0xe4fb";
    LUT4 i3281_3_lut (.A(\note_sig[2] ), .B(\note_sig[0] ), .C(\note_sig[1] ), 
         .Z(n3464)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam i3281_3_lut.INIT = "0x3232";
    LUT4 i3309_4_lut (.A(\note_sig[2] ), .B(\note_sig[3] ), .C(\note_sig[1] ), 
         .D(n1378), .Z(n3446)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+(D)))) */ ;
    defparam i3309_4_lut.INIT = "0x0031";
    LUT4 i3322_4_lut (.A(n3836), .B(n4_adj_203), .C(n35), .D(\note_sig[2] ), 
         .Z(n3443)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C+!(D)))) */ ;
    defparam i3322_4_lut.INIT = "0xc044";
    LUT4 i1_rep_73_3_lut (.A(\note_sig[3] ), .B(\note_sig[1] ), .C(\note_sig[0] ), 
         .Z(n3836)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i1_rep_73_3_lut.INIT = "0xeaea";
    LUT4 i3310_2_lut_3_lut (.A(\note_sig[1] ), .B(\note_sig[5] ), .C(\note_sig[4] ), 
         .Z(n3484)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i3310_2_lut_3_lut.INIT = "0x4040";
    LUT4 i3298_3_lut (.A(\note_sig[2] ), .B(\note_sig[0] ), .C(\note_sig[1] ), 
         .Z(n3465)) /* synthesis lut_function=(A (B)+!A (B+!(C))) */ ;
    defparam i3298_3_lut.INIT = "0xcdcd";
    LUT4 i61_3_lut (.A(\note_sig[3] ), .B(\note_sig[1] ), .C(\note_sig[0] ), 
         .Z(n35)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i61_3_lut.INIT = "0xcaca";
    LUT4 i3283_4_lut (.A(\note_sig[3] ), .B(n4), .C(n3785), .D(\note_sig[1] ), 
         .Z(n3439)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B (D)))) */ ;
    defparam i3283_4_lut.INIT = "0x4c88";
    LUT4 i3333_4_lut (.A(\note_sig[1] ), .B(n1378), .C(\note_sig[3] ), 
         .D(\note_sig[0] ), .Z(n3441)) /* synthesis lut_function=(!(A (B+(C+!(D)))+!A (B+((D)+!C)))) */ ;
    defparam i3333_4_lut.INIT = "0x0210";
    LUT4 i1_rep_22_2_lut (.A(\note_sig[2] ), .B(\note_sig[0] ), .Z(n3785)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_rep_22_2_lut.INIT = "0x8888";
    LUT4 i59_rep_25_4_lut (.A(\note_sig[2] ), .B(n1425), .C(\note_sig[3] ), 
         .D(\note_sig[1] ), .Z(n3788)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i59_rep_25_4_lut.INIT = "0x3f3a";
    LUT4 i3339_4_lut (.A(n1368), .B(\note_sig[3] ), .C(n4_adj_203), .D(\note_sig[1] ), 
         .Z(n3505)) /* synthesis lut_function=(A (B (C (D)))+!A !(((D)+!C)+!B)) */ ;
    defparam i3339_4_lut.INIT = "0x8040";
    LUT4 i1256_2_lut (.A(\note_sig[2] ), .B(\note_sig[0] ), .Z(n1368)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1256_2_lut.INIT = "0xeeee";
    LUT4 i3274_4_lut (.A(n3431), .B(\note_sig[2] ), .C(\note_sig[3] ), 
         .D(n1378), .Z(n3429)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i3274_4_lut.INIT = "0x0008";
    LUT4 i3318_2_lut (.A(\note_sig[1] ), .B(\note_sig[0] ), .Z(n3431)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i3318_2_lut.INIT = "0x9999";
    LUT4 i62_4_lut_4_lut (.A(\note_sig[3] ), .B(\note_sig[1] ), .C(\note_sig[0] ), 
         .D(\note_sig[2] ), .Z(n59)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D)+!C !(D))+!B !(D))) */ ;
    defparam i62_4_lut_4_lut.INIT = "0xea1f";
    LUT4 i3329_2_lut (.A(n3500), .B(n4_adj_203), .Z(n3499)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3329_2_lut.INIT = "0x8888";
    LUT4 i3330_4_lut (.A(\note_sig[0] ), .B(\note_sig[2] ), .C(\note_sig[3] ), 
         .D(\note_sig[1] ), .Z(n3500)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C (D))+!B (C (D)+!C !(D))))) */ ;
    defparam i3330_4_lut.INIT = "0x055e";
    LUT4 i3328_4_lut (.A(\note_sig[3] ), .B(\note_sig[2] ), .C(\note_sig[0] ), 
         .D(\note_sig[1] ), .Z(n3497)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A (B ((D)+!C)))) */ ;
    defparam i3328_4_lut.INIT = "0x3bf3";
    LUT4 i1329_4_lut (.A(n1425), .B(n1378), .C(\note_sig[3] ), .D(n1408), 
         .Z(n1441)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam i1329_4_lut.INIT = "0xeeec";
    LUT4 i1296_3_lut (.A(\note_sig[2] ), .B(\note_sig[1] ), .C(\note_sig[0] ), 
         .Z(n1408)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam i1296_3_lut.INIT = "0xa8a8";
    LUT4 i3280_4_lut_4_lut (.A(\note_sig[0] ), .B(\note_sig[2] ), .C(\note_sig[3] ), 
         .D(\note_sig[1] ), .Z(n3432)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(D))+!A (B (C)+!B (C+(D))))) */ ;
    defparam i3280_4_lut_4_lut.INIT = "0x260d";
    LUT4 i3315_4_lut (.A(n59), .B(n4), .C(\note_sig[1] ), .D(\note_sig[0] ), 
         .Z(n3492)) /* synthesis lut_function=(A (B)+!A !((C+(D))+!B)) */ ;
    defparam i3315_4_lut.INIT = "0x888c";
    LUT4 i3337_3_lut (.A(\note_sig[1] ), .B(\note_sig[2] ), .C(\note_sig[0] ), 
         .Z(n3494)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;
    defparam i3337_3_lut.INIT = "0xdcdc";
    LUT4 i69_4_lut_4_lut (.A(\note_sig[0] ), .B(\note_sig[3] ), .C(\note_sig[2] ), 
         .D(\note_sig[1] ), .Z(n38)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A (B (D)+!B !((D)+!C)))) */ ;
    defparam i69_4_lut_4_lut.INIT = "0x3bc5";
    LUT4 i1313_2_lut_3_lut (.A(\note_sig[2] ), .B(\note_sig[1] ), .C(\note_sig[0] ), 
         .Z(n1425)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1313_2_lut_3_lut.INIT = "0xfefe";
    LUT4 i1_2_lut (.A(\note_sig[5] ), .B(\note_sig[4] ), .Z(n4)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.INIT = "0x8888";
    LUT4 i1_2_lut_adj_9 (.A(\note_sig[6] ), .B(\note_sig[4] ), .Z(n6_c)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_9.INIT = "0x2222";
    LUT4 i2_2_lut_3_lut (.A(\note_sig[5] ), .B(\note_sig[4] ), .C(\note_sig[3] ), 
         .Z(n6)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_2_lut_3_lut.INIT = "0x0808";
    LUT4 i1266_2_lut (.A(\note_sig[5] ), .B(\note_sig[4] ), .Z(n1378)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1266_2_lut.INIT = "0xeeee";
    LUT4 i3272_2_lut_3_lut_4_lut (.A(\note_sig[2] ), .B(\note_sig[0] ), 
         .C(\note_sig[6] ), .D(\note_sig[4] ), .Z(n3444)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;
    defparam i3272_2_lut_3_lut_4_lut.INIT = "0x00d0";
    LUT4 i1248_2_lut (.A(\note_sig[1] ), .B(\note_sig[0] ), .Z(n22)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1248_2_lut.INIT = "0x8888";
    LUT4 i1_2_lut_adj_10 (.A(\note_sig[2] ), .B(\note_sig[0] ), .Z(n30)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_10.INIT = "0x2222";
    LUT4 i1_2_lut_adj_11 (.A(\note_sig[6] ), .B(\note_sig[4] ), .Z(n4_adj_203)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_11.INIT = "0x4444";
    LUT4 i66_3_lut_3_lut (.A(\note_sig[1] ), .B(\note_sig[0] ), .C(\note_sig[2] ), 
         .Z(n36)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A (B+!(C)))) */ ;
    defparam i66_3_lut_3_lut.INIT = "0x3838";
    LUT4 i1_3_lut_4_lut (.A(\note_sig[6] ), .B(\note_sig[4] ), .C(\note_sig[3] ), 
         .D(\note_sig[2] ), .Z(n613)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_3_lut_4_lut.INIT = "0x0002";
    LUT4 i3119_3_lut (.A(\note_sig[2] ), .B(\note_sig[6] ), .C(\note_sig[1] ), 
         .Z(n3350)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i3119_3_lut.INIT = "0xecec";
    LUT4 i30_4_lut (.A(n613), .B(n3481), .C(\note_sig[5] ), .D(\note_sig[1] ), 
         .Z(\frequency[16] )) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;
    defparam i30_4_lut.INIT = "0xc0ca";
    LUT4 i61_4_lut (.A(n3475), .B(n3788), .C(\note_sig[6] ), .D(n1378), 
         .Z(\frequency[15] )) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;
    defparam i61_4_lut.INIT = "0x0aca";
    LUT4 i3301_2_lut (.A(n33), .B(n4), .Z(n3475)) /* synthesis lut_function=(A (B)) */ ;
    defparam i3301_2_lut.INIT = "0x8888";
    LUT4 i71_4_lut (.A(n38), .B(n3468), .C(\note_sig[6] ), .D(n4), .Z(\frequency[14] )) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i71_4_lut.INIT = "0xcac0";
    LUT4 i82_4_lut (.A(n3459), .B(n3458), .C(\note_sig[6] ), .D(n4), 
         .Z(\frequency[13] )) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i82_4_lut.INIT = "0xcac0";
    
endmodule

//
// Verilog Description of module midi_interpreter
//

module midi_interpreter (n3122, \note_sig[0] , outclk, n3194, on_off_sig, 
            n3188, tracker, n3182, \note_sig[1] , n3180, \note_sig[2] , 
            n3178, \note_sig[3] , n3176, \note_sig[4] , n3174, \note_sig[5] , 
            n3172, \note_sig[6] , n3162, \status_byte[4] , valid_sig, 
            n3264, \byte_sig[7] , n3265, n666, n738);
    input n3122;
    output \note_sig[0] ;
    input outclk;
    input n3194;
    output on_off_sig;
    input n3188;
    output [1:0]tracker;
    input n3182;
    output \note_sig[1] ;
    input n3180;
    output \note_sig[2] ;
    input n3178;
    output \note_sig[3] ;
    input n3176;
    output \note_sig[4] ;
    input n3174;
    output \note_sig[5] ;
    input n3172;
    output \note_sig[6] ;
    input n3162;
    output \status_byte[4] ;
    input valid_sig;
    output n3264;
    input \byte_sig[7] ;
    output n3265;
    output n666;
    output n738;
    
    wire outclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(77[10],77[16])"*/
    
    wire VCC_net, n1, n647, n3196, GND_net;
    
    FD1P3XZ on_off_sig_29 (.D(n3194), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(on_off_sig));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam on_off_sig_29.REGSET = "RESET";
    defparam on_off_sig_29.SRMODE = "CE_OVER_LSR";
    FD1P3XZ tracker_i0_i1 (.D(n3188), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(tracker[1]));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam tracker_i0_i1.REGSET = "RESET";
    defparam tracker_i0_i1.SRMODE = "CE_OVER_LSR";
    FD1P3XZ data_byte_i0_i1 (.D(n3182), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(\note_sig[1] ));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam data_byte_i0_i1.REGSET = "RESET";
    defparam data_byte_i0_i1.SRMODE = "CE_OVER_LSR";
    FD1P3XZ data_byte_i0_i2 (.D(n3180), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(\note_sig[2] ));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam data_byte_i0_i2.REGSET = "RESET";
    defparam data_byte_i0_i2.SRMODE = "CE_OVER_LSR";
    FD1P3XZ data_byte_i0_i3 (.D(n3178), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(\note_sig[3] ));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam data_byte_i0_i3.REGSET = "RESET";
    defparam data_byte_i0_i3.SRMODE = "CE_OVER_LSR";
    FD1P3XZ data_byte_i0_i4 (.D(n3176), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(\note_sig[4] ));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam data_byte_i0_i4.REGSET = "RESET";
    defparam data_byte_i0_i4.SRMODE = "CE_OVER_LSR";
    FD1P3XZ data_byte_i0_i5 (.D(n3174), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(\note_sig[5] ));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam data_byte_i0_i5.REGSET = "RESET";
    defparam data_byte_i0_i5.SRMODE = "CE_OVER_LSR";
    FD1P3XZ data_byte_i0_i6 (.D(n3172), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(\note_sig[6] ));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam data_byte_i0_i6.REGSET = "RESET";
    defparam data_byte_i0_i6.SRMODE = "CE_OVER_LSR";
    FD1P3XZ status_byte_i0_i4 (.D(n3162), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(\status_byte[4] ));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam status_byte_i0_i4.REGSET = "RESET";
    defparam status_byte_i0_i4.SRMODE = "CE_OVER_LSR";
    FD1P3XZ tracker_i0_i0 (.D(n1), .SP(n647), .CK(outclk), .SR(n3196), 
            .Q(tracker[0]));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam tracker_i0_i0.REGSET = "RESET";
    defparam tracker_i0_i0.SRMODE = "CE_OVER_LSR";
    LUT4 i1_3_lut_3_lut (.A(valid_sig), .B(tracker[0]), .C(tracker[1]), 
         .Z(n3264)) /* synthesis lut_function=(A (B (C)+!B !(C))) */ ;
    defparam i1_3_lut_3_lut.INIT = "0x8282";
    LUT4 i1_3_lut_4_lut_4_lut (.A(tracker[1]), .B(\byte_sig[7] ), .C(tracker[0]), 
         .D(valid_sig), .Z(n3265)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (D))) */ ;
    defparam i1_3_lut_4_lut_4_lut.INIT = "0xf100";
    LUT4 i1_2_lut_4_lut_4_lut (.A(tracker[1]), .B(\byte_sig[7] ), .C(tracker[0]), 
         .D(valid_sig), .Z(n666)) /* synthesis lut_function=(A (C (D))+!A !(B+!(D))) */ ;
    defparam i1_2_lut_4_lut_4_lut.INIT = "0xb100";
    LUT4 i1242_2_lut (.A(\byte_sig[7] ), .B(tracker[0]), .Z(n1)) /* synthesis lut_function=(A+!(B)) */ ;   /* synthesis lineinfo="@0(42[4],73[13])"*/
    defparam i1242_2_lut.INIT = "0xbbbb";
    LUT4 i1_2_lut (.A(tracker[1]), .B(valid_sig), .Z(n3196)) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam i1_2_lut.INIT = "0x8888";
    LUT4 i640_2_lut (.A(tracker[0]), .B(tracker[1]), .Z(n738)) /* synthesis lut_function=(!((B)+!A)) */ ;   /* synthesis lineinfo="@0(42[4],73[13])"*/
    defparam i640_2_lut.INIT = "0x2222";
    LUT4 i1_4_lut (.A(tracker[1]), .B(valid_sig), .C(\byte_sig[7] ), .D(tracker[0]), 
         .Z(n647)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i1_4_lut.INIT = "0xccc8";
    VLO i2 (.Z(GND_net));
    FD1P3XZ data_byte_i0_i0 (.D(n3122), .SP(VCC_net), .CK(outclk), .SR(GND_net), 
            .Q(\note_sig[0] ));   /* synthesis lineinfo="@0(39[6],75[10])"*/
    defparam data_byte_i0_i0.REGSET = "RESET";
    defparam data_byte_i0_i0.SRMODE = "CE_OVER_LSR";
    VHI i1 (.Z(VCC_net));
    
endmodule

//
// Verilog Description of module \midi_reciever(996) 
//

module \midi_reciever(996)  (n626, tracker, outclk, data, \bit_index[0] , 
            n886, n650, n799, n883, byte_sig, valid_sig, \clock_counter[1] , 
            \clock_counter[4] , \clock_counter[9] , n849, n848, n847, 
            n846, n845, n844, n843, \clock_counter[0] , serial_c, 
            n3271, n616, GND_net, n621, n4, n4_adj_1, n4_adj_2, 
            n171, n3267, n1398);
    output n626;
    output [1:0]tracker;
    input outclk;
    output data;
    output \bit_index[0] ;
    input n886;
    output n650;
    output n799;
    input n883;
    output [7:0]byte_sig;
    output valid_sig;
    output \clock_counter[1] ;
    output \clock_counter[4] ;
    output \clock_counter[9] ;
    input n849;
    input n848;
    input n847;
    input n846;
    input n845;
    input n844;
    input n843;
    output \clock_counter[0] ;
    input serial_c;
    output n3271;
    output n616;
    input GND_net;
    output n621;
    output n4;
    output n4_adj_1;
    output n4_adj_2;
    input n171;
    output n3267;
    output n1398;
    
    wire outclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(77[10],77[16])"*/
    wire [9:0]clock_counter;   /* synthesis lineinfo="@1(26[10],26[23])"*/
    
    wire n1418, n583;
    wire [1:0]tracker_1__N_9;
    
    wire data_r;
    wire [2:0]bit_index;   /* synthesis lineinfo="@1(27[10],27[19])"*/
    
    wire n1427, VCC_net;
    wire [1:0]tracker_1__N_47;
    
    wire n19;
    wire [2:0]n80;
    
    wire n836, n657, n185, n778;
    wire [9:0]n172;
    wire [9:0]n57;
    
    wire n783, n8, n634, n4_c, n1, n2, n2711, n4010, n2709, 
        n4007, n2707, n4004, n2705, n4001, n2703, n3998, n3995, 
        GND_net_c;
    
    LUT4 i1_4_lut (.A(n626), .B(clock_counter[6]), .C(n1418), .D(clock_counter[5]), 
         .Z(n583)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1_4_lut.INIT = "0xbfff";
    FD1P3XZ data_r_61 (.D(data), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(data_r));   /* synthesis lineinfo="@1(35[5],38[12])"*/
    defparam data_r_61.REGSET = "RESET";
    defparam data_r_61.SRMODE = "CE_OVER_LSR";
    FD1P3XZ bit_index_i0 (.D(n886), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(\bit_index[0] ));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam bit_index_i0.REGSET = "RESET";
    defparam bit_index_i0.SRMODE = "CE_OVER_LSR";
    LUT4 i2_2_lut_3_lut (.A(bit_index[1]), .B(\bit_index[0] ), .C(bit_index[2]), 
         .Z(n1427)) /* synthesis lut_function=(A (B (C))) */ ;   /* synthesis lineinfo="@1(90[20],90[29])"*/
    defparam i2_2_lut_3_lut.INIT = "0x8080";
    FD1P3XZ bit_index_i1 (.D(n80[1]), .SP(n650), .CK(outclk), .SR(n799), 
            .Q(bit_index[1]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam bit_index_i1.REGSET = "RESET";
    defparam bit_index_i1.SRMODE = "CE_OVER_LSR";
    LUT4 i3356_3_lut_4_lut (.A(tracker_1__N_47[1]), .B(n19), .C(tracker[1]), 
         .D(tracker[0]), .Z(n650)) /* synthesis lut_function=(!(A (C+(D))+!A (B (D)+!B (C+(D))))) */ ;   /* synthesis lineinfo="@1(83[4],99[11])"*/
    defparam i3356_3_lut_4_lut.INIT = "0x004f";
    FD1P3XZ byte_sig_i0 (.D(n883), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(byte_sig[0]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam byte_sig_i0.REGSET = "RESET";
    defparam byte_sig_i0.SRMODE = "CE_OVER_LSR";
    FD1P3XZ bit_index_i2 (.D(n80[2]), .SP(n650), .CK(outclk), .SR(n799), 
            .Q(bit_index[2]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam bit_index_i2.REGSET = "RESET";
    defparam bit_index_i2.SRMODE = "CE_OVER_LSR";
    FD1P3XZ valid_sig_62 (.D(n836), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(valid_sig));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam valid_sig_62.REGSET = "RESET";
    defparam valid_sig_62.SRMODE = "CE_OVER_LSR";
    FD1P3XZ tracker_i1 (.D(tracker_1__N_9[1]), .SP(VCC_net), .CK(outclk), 
            .SR(GND_net_c), .Q(tracker[1]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam tracker_i1.REGSET = "RESET";
    defparam tracker_i1.SRMODE = "CE_OVER_LSR";
    LUT4 i251_2_lut_3_lut (.A(bit_index[1]), .B(\bit_index[0] ), .C(bit_index[2]), 
         .Z(n80[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   /* synthesis lineinfo="@1(90[20],90[29])"*/
    defparam i251_2_lut_3_lut.INIT = "0x7878";
    LUT4 i671_2_lut (.A(n657), .B(n185), .Z(n778)) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i671_2_lut.INIT = "0x8888";
    FD1P3XZ clock_counter_i0_i1 (.D(n172[1]), .SP(n657), .CK(outclk), 
            .SR(n778), .Q(\clock_counter[1] ));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i1.REGSET = "SET";
    defparam clock_counter_i0_i1.SRMODE = "CE_OVER_LSR";
    LUT4 i686_3_lut (.A(n650), .B(n1427), .C(tracker[1]), .Z(n799)) /* synthesis lut_function=(A (B+!(C))) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i686_3_lut.INIT = "0x8a8a";
    FD1P3XZ clock_counter_i0_i2 (.D(n57[2]), .SP(n657), .CK(outclk), .SR(n783), 
            .Q(clock_counter[2]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i2.REGSET = "RESET";
    defparam clock_counter_i0_i2.SRMODE = "CE_OVER_LSR";
    FD1P3XZ clock_counter_i0_i3 (.D(n57[3]), .SP(n657), .CK(outclk), .SR(n783), 
            .Q(clock_counter[3]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i3.REGSET = "RESET";
    defparam clock_counter_i0_i3.SRMODE = "CE_OVER_LSR";
    FD1P3XZ clock_counter_i0_i4 (.D(n172[4]), .SP(n657), .CK(outclk), 
            .SR(n778), .Q(\clock_counter[4] ));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i4.REGSET = "SET";
    defparam clock_counter_i0_i4.SRMODE = "CE_OVER_LSR";
    FD1P3XZ clock_counter_i0_i5 (.D(n172[5]), .SP(n657), .CK(outclk), 
            .SR(n778), .Q(clock_counter[5]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i5.REGSET = "SET";
    defparam clock_counter_i0_i5.SRMODE = "CE_OVER_LSR";
    FD1P3XZ clock_counter_i0_i6 (.D(n172[6]), .SP(n657), .CK(outclk), 
            .SR(n778), .Q(clock_counter[6]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i6.REGSET = "SET";
    defparam clock_counter_i0_i6.SRMODE = "CE_OVER_LSR";
    FD1P3XZ clock_counter_i0_i7 (.D(n172[7]), .SP(n657), .CK(outclk), 
            .SR(n778), .Q(clock_counter[7]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i7.REGSET = "SET";
    defparam clock_counter_i0_i7.SRMODE = "CE_OVER_LSR";
    LUT4 i4_4_lut (.A(clock_counter[8]), .B(n8), .C(n634), .D(n4_c), 
         .Z(n185)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i4_4_lut.INIT = "0x0800";
    FD1P3XZ clock_counter_i0_i8 (.D(n172[8]), .SP(n657), .CK(outclk), 
            .SR(n778), .Q(clock_counter[8]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i8.REGSET = "SET";
    defparam clock_counter_i0_i8.SRMODE = "CE_OVER_LSR";
    FD1P3XZ clock_counter_i0_i9 (.D(n57[9]), .SP(n657), .CK(outclk), .SR(n783), 
            .Q(\clock_counter[9] ));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i9.REGSET = "RESET";
    defparam clock_counter_i0_i9.SRMODE = "CE_OVER_LSR";
    FD1P3XZ byte_sig_i7 (.D(n849), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(byte_sig[7]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam byte_sig_i7.REGSET = "RESET";
    defparam byte_sig_i7.SRMODE = "CE_OVER_LSR";
    LUT4 tracker_1__I_0_69_Mux_0_i3_3_lut (.A(n1), .B(n2), .C(tracker[1]), 
         .Z(tracker_1__N_9[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam tracker_1__I_0_69_Mux_0_i3_3_lut.INIT = "0xcaca";
    FD1P3XZ byte_sig_i6 (.D(n848), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(byte_sig[6]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam byte_sig_i6.REGSET = "RESET";
    defparam byte_sig_i6.SRMODE = "CE_OVER_LSR";
    LUT4 i1_2_lut (.A(clock_counter[3]), .B(clock_counter[2]), .Z(n626)) /* synthesis lut_function=(A+(B)) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i1_2_lut.INIT = "0xeeee";
    LUT4 i338_3_lut_4_lut (.A(n19), .B(tracker[0]), .C(tracker_1__N_47[1]), 
         .D(data_r), .Z(n1)) /* synthesis lut_function=(A (B (C)+!B !(D))+!A !(D)) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i338_3_lut_4_lut.INIT = "0x80f7";
    FD1P3XZ byte_sig_i5 (.D(n847), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(byte_sig[5]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam byte_sig_i5.REGSET = "RESET";
    defparam byte_sig_i5.SRMODE = "CE_OVER_LSR";
    FD1P3XZ byte_sig_i4 (.D(n846), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(byte_sig[4]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam byte_sig_i4.REGSET = "RESET";
    defparam byte_sig_i4.SRMODE = "CE_OVER_LSR";
    FD1P3XZ byte_sig_i3 (.D(n845), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(byte_sig[3]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam byte_sig_i3.REGSET = "RESET";
    defparam byte_sig_i3.SRMODE = "CE_OVER_LSR";
    FD1P3XZ byte_sig_i2 (.D(n844), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(byte_sig[2]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam byte_sig_i2.REGSET = "RESET";
    defparam byte_sig_i2.SRMODE = "CE_OVER_LSR";
    FD1P3XZ byte_sig_i1 (.D(n843), .SP(VCC_net), .CK(outclk), .SR(GND_net_c), 
            .Q(byte_sig[1]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam byte_sig_i1.REGSET = "RESET";
    defparam byte_sig_i1.SRMODE = "CE_OVER_LSR";
    FD1P3XZ clock_counter_i0_i0 (.D(n172[0]), .SP(n657), .CK(outclk), 
            .SR(n778), .Q(\clock_counter[0] ));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam clock_counter_i0_i0.REGSET = "SET";
    defparam clock_counter_i0_i0.SRMODE = "CE_OVER_LSR";
    IOL_B data_60 (.PADDI(serial_c), .DO1(GND_net_c), .DO0(GND_net_c), 
          .CE(VCC_net), .IOLTO(GND_net_c), .HOLD(GND_net_c), .INCLK(outclk), 
          .OUTCLK(GND_net_c), .DI0(data));   /* synthesis lineinfo="@1(35[5],38[12])"*/
    defparam data_60.LATCHIN = "NONE_REG";
    defparam data_60.DDROUT = "NO";
    LUT4 i1_2_lut_adj_1 (.A(n583), .B(n3271), .Z(tracker_1__N_47[1])) /* synthesis lut_function=(A+(B)) */ ;   /* synthesis lineinfo="@1(104[14],104[44])"*/
    defparam i1_2_lut_adj_1.INIT = "0xeeee";
    LUT4 i244_2_lut (.A(bit_index[1]), .B(\bit_index[0] ), .Z(n80[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   /* synthesis lineinfo="@1(90[20],90[29])"*/
    defparam i244_2_lut.INIT = "0x6666";
    LUT4 i2_2_lut_3_lut_adj_2 (.A(\clock_counter[1] ), .B(\clock_counter[0] ), 
         .C(\clock_counter[4] ), .Z(n634)) /* synthesis lut_function=((B+!(C))+!A) */ ;   /* synthesis lineinfo="@1(83[7],83[39])"*/
    defparam i2_2_lut_3_lut_adj_2.INIT = "0xdfdf";
    LUT4 i1_2_lut_4_lut (.A(tracker[0]), .B(n19), .C(tracker[1]), .D(\bit_index[0] ), 
         .Z(n616)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1_2_lut_4_lut.INIT = "0xefff";
    FA2 add_45_add_4_11 (.A0(GND_net), .B0(\clock_counter[9] ), .C0(GND_net), 
        .D0(n2711), .CI0(n2711), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
        .D1(n4010), .CI1(n4010), .CO0(n4010), .S0(n57[9]));   /* synthesis lineinfo="@1(107[30],107[43])"*/
    defparam add_45_add_4_11.INIT0 = "0xc33c";
    defparam add_45_add_4_11.INIT1 = "0xc33c";
    FA2 add_45_add_4_9 (.A0(GND_net), .B0(clock_counter[7]), .C0(GND_net), 
        .D0(n2709), .CI0(n2709), .A1(GND_net), .B1(clock_counter[8]), 
        .C1(GND_net), .D1(n4007), .CI1(n4007), .CO0(n4007), .CO1(n2711), 
        .S0(n57[7]), .S1(n57[8]));   /* synthesis lineinfo="@1(107[30],107[43])"*/
    defparam add_45_add_4_9.INIT0 = "0xc33c";
    defparam add_45_add_4_9.INIT1 = "0xc33c";
    FA2 add_45_add_4_7 (.A0(GND_net), .B0(clock_counter[5]), .C0(GND_net), 
        .D0(n2707), .CI0(n2707), .A1(GND_net), .B1(clock_counter[6]), 
        .C1(GND_net), .D1(n4004), .CI1(n4004), .CO0(n4004), .CO1(n2709), 
        .S0(n57[5]), .S1(n57[6]));   /* synthesis lineinfo="@1(107[30],107[43])"*/
    defparam add_45_add_4_7.INIT0 = "0xc33c";
    defparam add_45_add_4_7.INIT1 = "0xc33c";
    LUT4 tracker_1__I_0_69_Mux_0_i2_4_lut_4_lut (.A(tracker_1__N_47[1]), .B(n19), 
         .C(tracker[0]), .D(n1427), .Z(n2)) /* synthesis lut_function=(A (C)+!A !((C+!(D))+!B)) */ ;   /* synthesis lineinfo="@1(83[4],99[11])"*/
    defparam tracker_1__I_0_69_Mux_0_i2_4_lut_4_lut.INIT = "0xa4a0";
    LUT4 i1_2_lut_4_lut_adj_3 (.A(tracker[0]), .B(n19), .C(tracker[1]), 
         .D(\bit_index[0] ), .Z(n621)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1_2_lut_4_lut_adj_3.INIT = "0xffef";
    LUT4 i1306_2_lut (.A(clock_counter[7]), .B(clock_counter[8]), .Z(n1418)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1306_2_lut.INIT = "0x8888";
    LUT4 equal_20_i4_2_lut (.A(bit_index[1]), .B(bit_index[2]), .Z(n4)) /* synthesis lut_function=(A+(B)) */ ;   /* synthesis lineinfo="@1(86[15],86[24])"*/
    defparam equal_20_i4_2_lut.INIT = "0xeeee";
    LUT4 tracker_1__I_0_69_Mux_1_i3_4_lut_4_lut (.A(n19), .B(tracker[0]), 
         .C(tracker_1__N_47[1]), .D(tracker[1]), .Z(tracker_1__N_9[1])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (D))+!A (B (C (D))+!B (D))) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam tracker_1__I_0_69_Mux_1_i3_4_lut_4_lut.INIT = "0xf308";
    LUT4 equal_17_i4_2_lut (.A(bit_index[1]), .B(bit_index[2]), .Z(n4_adj_1)) /* synthesis lut_function=(A+!(B)) */ ;   /* synthesis lineinfo="@1(86[15],86[24])"*/
    defparam equal_17_i4_2_lut.INIT = "0xbbbb";
    LUT4 i2_3_lut (.A(\clock_counter[9] ), .B(n634), .C(n583), .Z(n19)) /* synthesis lut_function=(A+(B+(C))) */ ;   /* synthesis lineinfo="@1(83[7],83[39])"*/
    defparam i2_3_lut.INIT = "0xfefe";
    FA2 add_45_add_4_5 (.A0(GND_net), .B0(clock_counter[3]), .C0(GND_net), 
        .D0(n2705), .CI0(n2705), .A1(GND_net), .B1(\clock_counter[4] ), 
        .C1(GND_net), .D1(n4001), .CI1(n4001), .CO0(n4001), .CO1(n2707), 
        .S0(n57[3]), .S1(n57[4]));   /* synthesis lineinfo="@1(107[30],107[43])"*/
    defparam add_45_add_4_5.INIT0 = "0xc33c";
    defparam add_45_add_4_5.INIT1 = "0xc33c";
    LUT4 equal_18_i4_2_lut (.A(bit_index[1]), .B(bit_index[2]), .Z(n4_adj_2)) /* synthesis lut_function=((B)+!A) */ ;   /* synthesis lineinfo="@1(86[15],86[24])"*/
    defparam equal_18_i4_2_lut.INIT = "0xdddd";
    FA2 add_45_add_4_3 (.A0(GND_net), .B0(\clock_counter[1] ), .C0(GND_net), 
        .D0(n2703), .CI0(n2703), .A1(GND_net), .B1(clock_counter[2]), 
        .C1(GND_net), .D1(n3998), .CI1(n3998), .CO0(n3998), .CO1(n2705), 
        .S0(n57[1]), .S1(n57[2]));   /* synthesis lineinfo="@1(107[30],107[43])"*/
    defparam add_45_add_4_3.INIT0 = "0xc33c";
    defparam add_45_add_4_3.INIT1 = "0xc33c";
    LUT4 i1245_2_lut (.A(n57[0]), .B(n171), .Z(n172[0])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1245_2_lut.INIT = "0x8888";
    FA2 add_45_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .A1(GND_net), 
        .B1(\clock_counter[0] ), .C1(VCC_net), .D1(n3995), .CI1(n3995), 
        .CO0(n3995), .CO1(n2703), .S1(n57[0]));   /* synthesis lineinfo="@1(107[30],107[43])"*/
    defparam add_45_add_4_1.INIT0 = "0xc33c";
    defparam add_45_add_4_1.INIT1 = "0xc33c";
    LUT4 i3412_3_lut (.A(n657), .B(n171), .C(n185), .Z(n783)) /* synthesis lut_function=(A ((C)+!B)) */ ;
    defparam i3412_3_lut.INIT = "0xa2a2";
    LUT4 i3410_2_lut_3_lut_4_lut (.A(n583), .B(n3271), .C(tracker[0]), 
         .D(tracker[1]), .Z(n657)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i3410_2_lut_3_lut_4_lut.INIT = "0xefff";
    LUT4 i1_3_lut_4_lut (.A(\clock_counter[9] ), .B(\clock_counter[1] ), 
         .C(\clock_counter[4] ), .D(\clock_counter[0] ), .Z(n3271)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam i1_3_lut_4_lut.INIT = "0xf7ff";
    LUT4 i1254_2_lut (.A(n57[4]), .B(n171), .Z(n172[4])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1254_2_lut.INIT = "0x8888";
    LUT4 i3_3_lut_4_lut (.A(clock_counter[5]), .B(clock_counter[6]), .C(clock_counter[7]), 
         .D(\clock_counter[9] ), .Z(n8)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i3_3_lut_4_lut.INIT = "0x0080";
    LUT4 i1_2_lut_3_lut_4_lut (.A(clock_counter[5]), .B(clock_counter[6]), 
         .C(clock_counter[7]), .D(clock_counter[8]), .Z(n3267)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.INIT = "0x8000";
    LUT4 i1253_2_lut (.A(n57[5]), .B(n171), .Z(n172[5])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1253_2_lut.INIT = "0x8888";
    LUT4 i723_3_lut_4_lut (.A(tracker_1__N_47[1]), .B(tracker[0]), .C(valid_sig), 
         .D(tracker[1]), .Z(n836)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i723_3_lut_4_lut.INIT = "0xf400";
    LUT4 i1252_2_lut (.A(n57[6]), .B(n171), .Z(n172[6])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1252_2_lut.INIT = "0x8888";
    LUT4 i1251_2_lut (.A(n57[7]), .B(n171), .Z(n172[7])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1251_2_lut.INIT = "0x8888";
    LUT4 i1250_2_lut (.A(n57[8]), .B(n171), .Z(n172[8])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1250_2_lut.INIT = "0x8888";
    LUT4 i1286_2_lut (.A(bit_index[1]), .B(bit_index[2]), .Z(n1398)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1286_2_lut.INIT = "0x8888";
    LUT4 i1_3_lut_4_lut_adj_4 (.A(tracker[0]), .B(clock_counter[3]), .C(clock_counter[2]), 
         .D(tracker[1]), .Z(n4_c)) /* synthesis lut_function=(!(A (B+(C+(D)))+!A (B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_4.INIT = "0x0102";
    LUT4 i1255_2_lut (.A(n57[1]), .B(n171), .Z(n172[1])) /* synthesis lut_function=(A (B)) */ ;   /* synthesis lineinfo="@1(48[7],114[16])"*/
    defparam i1255_2_lut.INIT = "0x8888";
    VLO i2 (.Z(GND_net_c));
    FD1P3XZ tracker_i0 (.D(tracker_1__N_9[0]), .SP(VCC_net), .CK(outclk), 
            .SR(GND_net_c), .Q(tracker[0]));   /* synthesis lineinfo="@1(46[5],115[12])"*/
    defparam tracker_i0.REGSET = "RESET";
    defparam tracker_i0.SRMODE = "CE_OVER_LSR";
    VHI i1 (.Z(VCC_net));
    
endmodule

//
// Verilog Description of module pll
//

module pll (GND_net, inputclk, outclk);
    input GND_net;
    input inputclk;
    output outclk;
    
    wire inputclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(76[10],76[18])"*/
    wire outclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(77[10],77[16])"*/
    
    \lscc_pll(DIVR="3",DIVF="82",DIVQ="5",FILTER_RANGE="1",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",FREQUENCY_PIN_REFERENCECLK="48.000000")  lscc_pll_inst (.GND_net(GND_net), 
            .inputclk(inputclk), .outclk(outclk));   /* synthesis lineinfo="@3(34[5],47[18])"*/
    
endmodule

//
// Verilog Description of module \lscc_pll(DIVR="3",DIVF="82",DIVQ="5",FILTER_RANGE="1",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",FREQUENCY_PIN_REFERENCECLK="48.000000") 
//

module \lscc_pll(DIVR="3",DIVF="82",DIVQ="5",FILTER_RANGE="1",PLLOUT_SELECT_PORTA="GENCLK",PLLOUT_SELECT_PORTB="GENCLK",FREQUENCY_PIN_REFERENCECLK="48.000000")  (GND_net, 
            inputclk, outclk);
    input GND_net;
    input inputclk;
    output outclk;
    
    wire inputclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(76[10],76[18])"*/
    wire outclk /* synthesis is_clock=1 */ ;   /* synthesis lineinfo="@5(77[10],77[16])"*/
    
    wire VCC_net, feedback_w;
    
    PLL_B u_PLL_B (.REFERENCECLK(inputclk), .FEEDBACK(feedback_w), .DYNAMICDELAY7(GND_net), 
          .DYNAMICDELAY6(GND_net), .DYNAMICDELAY5(GND_net), .DYNAMICDELAY4(GND_net), 
          .DYNAMICDELAY3(GND_net), .DYNAMICDELAY2(GND_net), .DYNAMICDELAY1(GND_net), 
          .DYNAMICDELAY0(GND_net), .BYPASS(GND_net), .RESET_N(VCC_net), 
          .SCLK(GND_net), .SDI(GND_net), .LATCH(GND_net), .INTFBOUT(feedback_w), 
          .OUTGLOBAL(outclk)) /* synthesis syn_instantiated=1, LSE_LINE_FILE_ID=41, LSE_LCOL=5, LSE_RCOL=18, LSE_LLINE=34, LSE_RLINE=47 */ ;   /* synthesis lineinfo="@3(34[5],47[18])"*/
    defparam u_PLL_B.FEEDBACK_PATH = "SIMPLE";
    defparam u_PLL_B.DELAY_ADJUSTMENT_MODE_FEEDBACK = "FIXED";
    defparam u_PLL_B.FDA_FEEDBACK = "0";
    defparam u_PLL_B.DELAY_ADJUSTMENT_MODE_RELATIVE = "FIXED";
    defparam u_PLL_B.FDA_RELATIVE = "0";
    defparam u_PLL_B.SHIFTREG_DIV_MODE = "0";
    defparam u_PLL_B.PLLOUT_SELECT_PORTA = "GENCLK";
    defparam u_PLL_B.PLLOUT_SELECT_PORTB = "GENCLK";
    defparam u_PLL_B.DIVR = "3";
    defparam u_PLL_B.DIVF = "82";
    defparam u_PLL_B.DIVQ = "5";
    defparam u_PLL_B.FILTER_RANGE = "1";
    defparam u_PLL_B.EXTERNAL_DIVIDE_FACTOR = "NONE";
    defparam u_PLL_B.ENABLE_ICEGATE_PORTA = "0";
    defparam u_PLL_B.ENABLE_ICEGATE_PORTB = "0";
    defparam u_PLL_B.TEST_MODE = "0";
    defparam u_PLL_B.FREQUENCY_PIN_REFERENCECLK = "48.000000";
    VHI i1 (.Z(VCC_net));
    
endmodule
