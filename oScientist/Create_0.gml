sprite_index = sScienTalkHold;

timer = -1;
distanceToPoint1 = 0;
distanceToPoint2 = 0;
camDecrease = 0;

movedToBox = false;
atBox = false;
atSpeechPlace = false;

NewTextBox("Greetings, my fellow scholars. I have brought you here today to demonstrate the\nSchrodinger's Cat thought experiment.",sScientistFace);
NewTextBox("Some of you may think this is but a trivial thought experiment, but I wish to\nshow you all something interesting I have discovered with it.",sScientistFace);
NewTextBox("First, I will place this cat in a soundproof box, on that table.",sScientistFace);

global.tutorial = 1;