if(oPlayerPath.canMove && available && !oExpeditionPlace.selected){
    oPlayerPath.xTo = 140;
    oPlayerPath.yTo = 205;
    clicked = true;
    audio_play_sound(snClick, 1, false, 1, 0, 2, 1);
}