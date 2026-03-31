timer--;

if(global.paradoxesUnlocked[1] && global.paradoxesUnlocked[2] && global.paradoxesUnlocked[3]) global.finaleUnlocked = true;

if(clicked && oPlayerPath.x == 370 && oPlayerPath.y == 80){
    available = false;
    selected = true;
    clicked = false;
}

if(selected){
    var keyUp = keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"));
	var keyDown = keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"));
    var equip = keyboard_check_pressed(ord("E"));
    var cancel = keyboard_check_pressed(vk_backspace);
    
    var cycleDirection = keyDown - keyUp;
    if(cycleDirection != 0){
        if(!confirmMenu){
            if(!global.finaleUnlocked){
                expedSelected += cycleDirection;
                if(expedSelected < 1) expedSelected = 3;
                if(expedSelected > 3) expedSelected = 1;
            }
            else{
            	expedSelected += cycleDirection;
                if(expedSelected < 1) expedSelected = 4;
                if(expedSelected > 4) expedSelected = 1;
            }
        }
        else{
            confirmMenuSprite = cycleDirection+3;
        }
    }
    
    if(equip){
        audio_play_sound(snHurt, 1, false, 1, 0, 3, 1);
        if(!confirmMenu){
            global.currentExpedition = expedSelected;
            confirmMenu = true;
        }
        else{
        	if(confirmMenuSprite == 2){
                if(!instance_exists(oFade)){
                    var fader = instance_create_depth(x,y,-999,oFade);
                    fader.targetRoom = rmPath;
                }
            }
            else if(confirmMenuSprite == 4){
                confirmMenu = false;
            }
        }
    }
    if(cancel){
        if(!confirmMenu) selected = false;
        else confirmMenu = false;
    }
    
    opacity = min(opacity+0.05,1);
}
else{
    opacity = max(opacity-0.05,0);
    available = true;
}

if(!confirmMenu) confirmMenuSprite = 0;