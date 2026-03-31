if(oBattleManager.phase == 0){
    if(oPlayerBattle.item1) y = 130;
    else if(oPlayerBattle.item2) y = 160;
    else if(oPlayerBattle.item3) y = 190;
    else if(oPlayerBattle.item4) y = 210;
    else if(oPlayerBattle.item5) y = 240;
    else if(oPlayerBattle.item6) y = 260;
    else if(!showClicked) y = 1000;
}
else{
	oPlayerBattle.item1 = false;
    oPlayerBattle.item2 = false;
    oPlayerBattle.item3 = false;
    oPlayerBattle.item4 = false;
    oPlayerBattle.item5 = false;
    oPlayerBattle.item6 = false;
    y = 1000;
}

if(used){
    with(oPlayerBattle){
        if(sprite_index != spriteItem) sprite_index = spriteItem;
        if(sprite_index == spriteItem && image_index > image_number-1){
            sprite_index = spriteIdle;
            other.used = false;
            other.showClicked = true;
        }
    }
}

timer--;
if(timer == 0){
    y = 1000;
    showClicked = false;
}

if(showClicked){
    sprite_index = sUseClicked;
    if(timer < -10) timer = 10;
}
else sprite_index = sUse;