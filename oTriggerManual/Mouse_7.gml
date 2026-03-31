if(oPlayerPath.canMove && !oExpeditionPlace.selected && !oParadoxPlace.selected){
    oPlayerPath.xTo = xTar;
    oPlayerPath.yTo = yTar;
    hasMade = false;
    audio_play_sound(snClick, 1, false, 1, 0, 2, 1);
}