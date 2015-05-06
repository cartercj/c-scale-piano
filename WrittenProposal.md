# Introduction #

The goal of this project is to create a multi-key input playable c-scale piano mapped to the QWERTYUI keys of a standard PS/2 keyboard.  An Altera Cyclone II DE2 board will serve as the hardware control for the keyboard inputs and speaker output.  Control switches will give the user the ability to change the key of the scale.

## Background ##

Audio is generally created today with a mix of hardware and software.  This project eliminates the need for software, implementing a playable piano, simulated song audio, and Learn-To-Play mode into a single hardware design.


# Written Proposal #

For our final project we plan on creating a multi-key playable c-scale piano as outlined in the Introduction.  This project will require a great deal of research in mapping keys from the PS/2 keyboard to specific tonal frequencies to be played through a 3.5mm stereo audio output on the DE2 board. Another difficult task will be generating the appropriate tones for chords in Verilog code.

After successfully creating a c-scale piano, we plan to create switches which will allow the user to switch to different scales.  If time permits, we may add a digital display which displays the current note in a "Pitch Pipe" format.

**Week 1:** Research how to map key strikes from a PS/2 keyboard to the Altera Cyclone II DE2 board in a meaningful manner, also allowing for multiple keys to be depressed simultaneously.

**Week 2:** Implement the PS/2 controller designed by Jonathon Rose from the University of Toronto [(Source Code)](http://www.eecg.toronto.edu/~jayar/ece241_08F/AudioVideoCores/ps2/ps2.html#apkeycodes) in a meaninful way which allows us to identify which keys are pressed and depressed on the clock.

**Week 3:** Research how to map specific audio frequencies to the 3.5mm output, including chords.

**Week 4:** Create code to drive output to speakers and implement switches to change the key signature of the scale. **_AMENDED_**

**Week 5:** Finalize and present.

**Additional Time:** Any additional time we have due to potentially being ahead of schedule will be used to map output to a monitor displaying the name of the note being played in "Pitch Pipe" mode. **_AMENDED_**

## Amendments ##

After beginning the project, it was decided that a Learn-To-Play mode would be implemented in lieu of the multiple scales.  Additionally, the scrolling note register in the Learn-To-Play mode took the place of the VGA output for "Pitch Pipe" mode.