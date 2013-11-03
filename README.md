DingDong ~ An Arduino Concept
===

There are two files required to make this work.

**DingDong.ino**: The Arduino script that watches for a button press. The LED flashes and a key press is sent on the serialport.

**Sonnette.rb** The ruby script that continually runs, waiting for the button to be pressed. When it is pressed a notification is sent using the Boxcar API, a console log message is pressed, and the computer makes an announcements.

Credit where Credit is Due:

- Brian Gunn
- Matt Bullock
- Josh Sullivan
- Dan Reedy

This project uses the MIT license

