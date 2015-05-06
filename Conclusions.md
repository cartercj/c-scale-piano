# Design #

The final design of our project implements an **I2C** module (John Loomis) which configures the audio codec on the DE2 board, a **notegen** module (Aaron Pittenger and Rachel Grady) which generates square waves for audible output, a **PS2\_Controller** (Jonathon Rose) which creates signals from the keyboard to be converted into recognizable signals in the **key\_reader** and **c\_scale** modules which drive audio output to the speakers, as well as several other module which generate songs and note registers for the Learn-To-Play mode.

The project does not use multiple key signatures, as was originally intended, but the code written creates an easy blueprint for someone to extend this feature.  Songs are selected and driven be the aforementioned switches with a universal reset.

_Please note that all code for this project can be found under Source -> Browse_

# Contributors #

While we have logged over 50 hours in the completion of this project, we would not have been able to accomplish our goals with out help from the following sources:

  * John Loomis [(Source Code)](http://www.johnloomis.org/digitallab/audio/audio2/audio2.qdoc.html)
  * Jonathon Rose [(Source Code)](http://www.eecg.toronto.edu/~jayar/ece241_08F/AudioVideoCores/ps2/ps2.html#apkeycodes)
  * Aaron Pittenger and Rachel Grady [(Project Home)](http://www.users.muohio.edu/jamiespa/teaching/ECE_287/FALL_2010/Aaron_and_Rachel-December_18_2010/8cf04a9734132302f96da8e113e80ce5.html)

Any questions about the final design of this project should be directed to Christian Carter (cartercj@miamioh.edu) or Sam Mirizzi (mirizzsp@miamioh.edu)