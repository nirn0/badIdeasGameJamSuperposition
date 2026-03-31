if(oPlayerPath.canMove && available && !oParadoxPlace.selected){
    oPlayerPath.xTo = 370;
    oPlayerPath.yTo = 80;
    clicked = true;
    audio_play_sound(snClick, 1, false, 1, 0, 2, 1);
}