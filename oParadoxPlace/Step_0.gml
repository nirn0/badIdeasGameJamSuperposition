timer--;

if(clicked && oPlayerPath.x == 140 && oPlayerPath.y == 205){
    available = false;
    selected = true;
    clicked = false;
    if(global.tutorialBase){
        NewTextBox("Hello again, cat. I'll help you equip different paradoxes for use\nin your expeditions. Press 'P' while in a battle to use your paradox,\nbut be warned; you'll have to wait 3 turns before it's ready to be used again.",sTutorialPortrait);
        NewTextBox("Currently only one paradox is available, but you'll unlock more as you defeat\nthe Great Concepts.");
    }
    else NewTextBox("Hello again, cat. Which paradox will it be this time?",sTutorialPortrait);
}

if(selected && !instance_exists(oText)){
    var keyUp = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
	var keyDown = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
    var equip = keyboard_check_pressed(ord("E"));
    var cancel = keyboard_check_pressed(vk_backspace);
    
    var cycleDirection = keyDown - keyUp;
    if(cycleDirection != 0 && !global.tutorialBase){
        do{
            global.paradoxSelected += cycleDirection;
            if(global.paradoxSelected < 0) global.paradoxSelected = 4;
            if(global.paradoxSelected > 4) global.paradoxSelected = 0;
        }
        until (global.paradoxesUnlocked[global.paradoxSelected]);
    }
    
    if(equip){
        audio_play_sound(snHurt, 1, false, 1, 0, 3, 1);
        global.paradoxEquipped = global.paradoxSelected+1;
        cancel = true;
    }
    if(cancel){
        selected = false;
    }
    
    opacity = min(opacity+0.05,1);
}
else{
    opacity = max(opacity-0.05,0);
    available = true;
}