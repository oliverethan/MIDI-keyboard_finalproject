 # Final Project: MIDI Keyboard Synthesizer
 ##### Introduction to digital logic circuits, Spring 2019, Steven Bell 
### Contributors: Eliriana Lleshi, Ethan Oliver, and Josh Stone

This README was adapted from a final report created by all the contributors.

## OVERVIEW
The basic idea behind our project was to create a synthesizer for the Alesis Q25 25-Key MIDI Keyboard Controller. Users interact with our project simply by pressing and releasing keys, one at a time. Octaves can be changed by pressing the UP and DOWN buttons to the left of the keyboard, up to two times each. Traditionally, MIDI keyboards are interacted with using USB connection to a personal computer, at which point software downloaded onto the computer is able to understand the signals the keyboard emits. Our intention was to bypass this by inputting MIDI signal using pins on the FPGA and interpreting them using VHDL, according to the MIDI message protocol. Because the keyboard itself does not generate sounds standalone, our goal was also to pipe these signals into a speaker such that when someone presses a key, the speaker emits the corresponding tone, just as someone would expect from a piano. 

Our project consists of several hardware components, including the MIDI Keyboard itself, a MIDI to Serial breakout board, the Lattice iCE40UP5K FPGA, an amplifier, and a speaker. Closer depictions and instructions regarding the breakout board and amplifier will appear in the following section. The hardware components interact as shown in the following high-level diagram. Below it, we have included the final physical setup of our components, where all but the MIDI keyboard appear in the circuit to the left.  

## TECHNICAL DESCRIPTION
Of the above hardware components, the MIDI breakout board and amplifier were not pre-built. The MIDI breakout board takes in a MIDI cable connection and has pins rx, tx, +, -. These signify receiver, transmitter, power, and ground, respectively. Because we only wish to receive MIDI input, we used the rx pin to convert our signals from MIDI to serial input. In short, the MIDI cord connects to the breakout board, and the rx pin connects to a pin on the FPGA which will read in a single bit of serial data according to the MIDI protocol. It was necessary to soldier the breakout board together safely, as in the referenced instructions. It can also be noted that it is not imperative to soldier the output MIDI jack, because we are only reading MIDI input. 

The amplifier was also constructed by hand according to the diagram below. Our amplifier is composed of three 130-ohm resistors and an ON Semiconductor (TO-220AB Case 221A Style 1). It can be replicated from the datasheet, circuit diagram, and physical picture. 
   
The block diagram on the previous page laid out the hardware overview, with one box representing all the modules on the FPGA. Naturally, this box can be broken down into several modules. First, we will introduce the architecture by depicting module interactions, and then we will delve more deeply into what each module consists of and how it contributes to our overall goals.  On the following page is the overall block diagram, which reflects the Netlist Analyzer. 

This block diagram represents everything within the top module, for which there is one std_logic input, serial, and one std_logic output, sample. The serial input comes directly from the pin on the FPGA which is connected to rx on the breakout board. The sample output is connected directly to the amplifier and speaker. Every component in between was tied together using intermediate signals and port maps in the top module.

Farthest left, we have the module HSOSC, which generates a 48MHz clock, and PLL, which takes this clock rate as input and outputs a clock of a different frequency, which in our case was 31.125MHz. Because we have worked closely with these in previous laboratories, we will not delve any deeper into these modules. It should be noted that the midi_reciever and midi_interpreter modules run on the 31.125MHz clock, whereas the play_note module runs on the 48MHz clock, for reasons soon to be explained in the  module descriptions. 


