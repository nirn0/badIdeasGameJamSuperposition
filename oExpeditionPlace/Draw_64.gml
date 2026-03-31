var camX, camY;

camX = 960;
camY = 540;

draw_sprite_ext(sExpedSelectBG,0,camX,camY,100,100,0,c_white,opacity);

//expeditions
draw_sprite_ext(sExpedMenu1,global.paradoxesUnlocked[1],1000,yOffset[1],2,2,0,c_white,opacity);
draw_sprite_ext(sExpedMenu2,global.paradoxesUnlocked[2],1000,yOffset[2],2,2,0,c_white,opacity);
draw_sprite_ext(sExpedMenu3,global.paradoxesUnlocked[3],1000,yOffset[3],2,2,0,c_white,opacity);
if(global.finaleUnlocked) draw_sprite_ext(sExpedMenu4,0,1000,yOffset[4],2,2,0,c_white,opacity);

if(confirmMenu){
    //draw_sprite_ext(sExpedConfirm,expedSelected,680,500,1,1,0,c_white,opacity);
    draw_sprite_ext(sConfirmOptions,confirmMenuSprite,1000,800,3,3,0,c_white,opacity);
}

draw_sprite_ext(sTutorialControls,0,200,1000,1,1,0,c_white,opacity);

//cursor
draw_sprite_ext(sCursor, 0, 1000, yOffset[expedSelected], 1, 1, 0, c_white, opacity);

/*paradoxes
for(var i = 1; i < PARADOXES.TYPE_COUNT; i++){
    if(global.paradoxesUnlocked[i]){
        draw_sprite_ext(sParadoxes, i, camX+xOffset[i], camY+yOffset[i],1,1, 0, c_white, 1);
    }
}*/