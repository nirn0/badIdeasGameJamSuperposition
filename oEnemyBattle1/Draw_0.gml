draw_self();
if(!die){
    draw_sprite_stretched_ext(sPixel,0,x-25,y+13,50,6,c_white,1);
    draw_sprite_stretched_ext(sPixel,0,x-25,y+13,min(((hp/hpMax)*50), 50),6,c_red,1);
}
if(oBattleManager.epoi1 > 0) draw_sprite(sPoisonEffect,0,x,y);
if(drawFrz) draw_sprite(sFreezeEffect,0,x,y);