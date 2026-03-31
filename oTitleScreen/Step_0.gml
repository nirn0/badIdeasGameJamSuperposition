if((keyboard_check_pressed(ord("E")) or keyboard_check_pressed(vk_space)) && !loadingStarted){
    if(optionSelected == 0){
        global.gameSaveSlot = slotData;
        if(slotData != -1) LoadGame(global.gameSaveSlot);
        else room_goto(rmIntro);
        loadingStarted = true;
    }
    if(optionSelected == optionAmount){
        game_end();
    }
    if(optionSelected == 1 && optionAmount == 2){
        file_delete("saveFile.sav");
        game_restart();
    }
}

if(canMove){
    if(keyboard_check_pressed(vk_up) or keyboard_check_pressed(ord("W"))){
        optionSelected -= 1;
        if(optionSelected < 0) optionSelected = optionAmount;
    }
    if(keyboard_check_pressed(vk_down) or keyboard_check_pressed(ord("S"))){
        optionSelected += 1;
        if(optionSelected > optionAmount) optionSelected = 0;
    }
}