var camX, camY;

camX = 960;
camY = 540;

//draw_text(100,300,global.paradoxSelected)
//draw_text(100, 400, global.paradoxesUnlocked)

draw_sprite_ext(sExpedSelectBG,0,camX,camY,100,100,0,c_white,opacity);

//paradoxes
draw_sprite_ext(sParadox1,1,900,yOffset[0],2,2,0,c_white,opacity);
draw_sprite_ext(sParadox2,global.paradoxesUnlocked[1],900,yOffset[1],2,2,0,c_white,opacity);
draw_sprite_ext(sParadox3,global.paradoxesUnlocked[2],900,yOffset[2],2,2,0,c_white,opacity);
draw_sprite_ext(sParadox4,global.paradoxesUnlocked[3],900,yOffset[3],2,2,0,c_white,opacity);

//draw_sprite_ext(sParadoxes,global.paradoxEquipped,700,400,1,1,0,c_white,opacity);

draw_sprite_ext(sParadoxInfo,global.paradoxSelected,1500,500,2,2,0,c_white,opacity);

draw_sprite_ext(sTutorialControls,0,200,1000,1,1,0,c_white,opacity);

//cursor
draw_sprite_ext(sCursorPar, 0, 900, yOffset[global.paradoxSelected], 1, 1, 0, c_white, opacity);

//draw_text(100,200,global.paradoxesUnlocked)
//draw_text(100,300,global.paradoxSelected);