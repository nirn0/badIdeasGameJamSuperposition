if(available && !instance_exists(oLootMerchOpt1) && !instance_exists(oLootMerchOpt3) && oEncounterCarrier.canClick){
    oEncounterCarrier.canClick = false;
    oPlayerPath.xTo = x;
    oPlayerPath.yTo = y;
    timer = timerMax
    audio_play_sound(snClick, 1, false, 1, 0, 2, 1);
}