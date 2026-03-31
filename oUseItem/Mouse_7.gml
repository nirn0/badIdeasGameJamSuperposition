if(oPlayerBattle.item1){
    global.itemUsed = global.item1;
    global.item1 = 0;
}
else if(oPlayerBattle.item2){
    global.itemUsed = global.item2;
    global.item2 = 0;
}
else if(oPlayerBattle.item3){
    global.itemUsed = global.item3;
    global.item3 = 0;
}
else if(oPlayerBattle.item4){
    global.itemUsed = global.item4;
    global.item4 = 0;
}
else if(oPlayerBattle.item5){
    global.itemUsed = global.item5;
    global.item5 = 0;
}
else if(oPlayerBattle.item6){
    global.itemUsed = global.item6;
    global.item6 = 0;
}
showClicked = true;
oPlayerBattle.item1 = false;
oPlayerBattle.item2 = false;
oPlayerBattle.item3 = false;
oPlayerBattle.item4 = false;
oPlayerBattle.item5 = false;
oPlayerBattle.item6 = false;

audio_play_sound(snClick, 1, false, 1, 0, 1.5, 1);

oBattleManager.playerHasUsedItem = true;
used = true;