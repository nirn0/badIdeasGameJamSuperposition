if(global.tutorial != 0){
    oPlayerPath.xTo = x;
    oPlayerPath.yTo = y+50; 
    oPlayerPath.x = x;
    oPlayerPath.y = y+50;
    oParadoxPlace.x = x-40;
    oParadoxPlace.y = y+70;
    NewTextBox("Oh, hello, there, Igor. Who's this you've brought?\n",sBaseFriendPortrait);
    NewTextBox("Greetings, Shar. I found this cat some ways into the woods. I was hoping you could\nexplain why they're here.",sTutorialPortrait);
    NewTextBox("Ah, of course. Well, cat, this place is known as the Backend of Reality. It is a strange\nplace, created with the discarded and misunderstood concepts of humankind. The fact you\nare here likely means you were put in acontradictory position by humans, where, according\nto them, you were in two states at once.",sBaseFriendPortrait);
    NewTextBox("Typically, when one such as yourself arives, they must defeat the four Great Concepts -\npowerful beings created by these paradoxical concepts of humans.\nOnly once you have done this will you be able to leave.",sBaseFriendPortrait);
    NewTextBox("That being said, you can also make use of these paradoxes to aid you in your mission.\nSpeak to Igor for more information.",sBaseFriendPortrait);
    NewTextBox("I'll just be over here!",sTutorialPortrait);
    NewTextBox("Good luck, small cat.",sBaseFriendPortrait);
    global.tutorialBase = true;
}