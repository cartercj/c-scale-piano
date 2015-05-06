# Task #

Add two additional songs to the project: "Angels We Have Heard On High" and "God Rest Ye Merry Gentlemen." This task requires implementing a state machine to register the difference between each of the songs and to handle difference between the counters and hex display's for each song. the note registers will also be updated to include a scrolling feature, making song learning easier.


# Results #

Adding the melody and harmony for each of the songs proved to be much the same process as before.  To account for eighth notes withing each of these songs, we were required to write the pseudo-state machine in half time, resulting in twice as many states. The melody and harmony for "Angels We Have Heard On High" were mapped to _SW12_ and _SW11_ respectively, while the melody and harmony for "God Rest Ye Merry Gentlemen" were mapped to _SW8_ and _SW7_. The complexity of these songs with an eighth note structure prompted us to add a tempo switch on _SW0_ which allows the user to select a temp half the speed of the standard when the switch is thrown high. This is beneficial especially when using a scrolling note register, as notes move more slowly.

To implement the scrolling shift register, we began by attempting a shift register which would move the preceding note one space over.  However, this proved to be a more elusive approach than originally thought as note outputs were on a clock which operated on a counter, and not on the system clock. Therefore, we elected to instead create a separate output for each note value on each HEX display on each count of the song.  These outputs were then sent into a state machine in the top-level module which shifted states based on the song selected and the counter involved for each song.  This approach produced a scrolling effect identical to the shift register, while still allowing for top-level state machine control.

The control of which song should be routed to the speakers, if any, was left to a series of if statements, which allow for only one song to be selected at a time. If a user has no song output (not including scrolling note register) selected, both speakers produce sound based on the keyboard mappings.