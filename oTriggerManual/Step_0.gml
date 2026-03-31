if(!hasMade && oPlayerPath.x == xTar && oPlayerPath.y == yTar){
    if(global.tutorialBase){
        NewTextBox("I wish you luck on your quest, small cat. Should you defeat the Great Concepts,\nyou will be returned to your world.",sBaseFriendPortrait);
        NewTextBox("Don't forget to speak with Igor, to find out how to use the paradoxes to\nyour advantage.",sBaseFriendPortrait);
    }
    else{
        var amoutTrue = 0;
        for(var i = 0; i < array_length(global.paradoxesUnlocked); i++){
            if(global.paradoxesUnlocked[i] == true) amoutTrue++;
        }
    	switch (amoutTrue) {
        	case 1:
                NewTextBox("I wish you luck on your quest, small cat. It may take time and patience to slay even\none of the Great Concepts, but I'm sure you'll be able to.",sBaseFriendPortrait); break;
            case 2:
                NewTextBox("Well done! You have slain one of the Great Concepts! I'm sure you'll be\nable to best the others as well.",sBaseFriendPortrait); break;
            case 3:
                NewTextBox("Incredible! You've already defeated two of the Great Concepts! Keep up this\npace and you'll be out of the Backend in no time!",sBaseFriendPortrait); break;
            case 4:
            case 5:
                NewTextBox("My, my... Three of the Great Cocepts down... I believe you have drawn the last\none out. It is... different from the rest.",sBaseFriendPortrait);
                NewTextBox("This one is a mirror image of you -\nthe superposition of you that the humans believe is dead. It will pose a challenge, but I'm\ncertain you'll defeat it, small cat.",sBaseFriendPortrait); break;
        }
    }
    /*
    if(array_length(text1) == 1) NewTextBox(text1[0]);
    else if(array_length(text1) == 2) NewTextBox(text1[0],text1[1]);
    
    if(is_array(text2)){
        if(array_length(text2) == 1) NewTextBox(text2[0]);
        else if(array_length(text2) == 2) NewTextBox(text2[0],text2[1]);
    }
    
    if(is_array(text3)){
        if(array_length(text3) == 1) NewTextBox(text3[0]);
        else if(array_length(text3) == 2) NewTextBox(text3[0],text3[1]);
    }
    
    if(is_array(text4)){
        if(array_length(text4) == 1) NewTextBox(text4[0]);
        else if(array_length(text4) == 2) NewTextBox(text4[0],text4[1]);
    }
    
    if(is_array(text5)){
        if(array_length(text5) == 1) NewTextBox(text5[0]);
        else if(array_length(text5) == 2) NewTextBox(text5[0],text5[1]);
    }
    */
    
    hasMade = true;
}