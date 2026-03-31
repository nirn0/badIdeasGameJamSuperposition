draw_self();
if(!die){
    draw_sprite_stretched_ext(sPixel,0,x-25,y+13,50,6,c_white,1);
    draw_sprite_stretched_ext(sPixel,0,x-25,y+13,(hp/hpMax)*50,6,c_red,1);
}
if(name == "machine" && hp > 0) draw_line_width_colour(x,y,oEnemyBattle1.x,oEnemyBattle1.y,2,c_green,c_green);
if(oBattleManager.epoi3 > 0) draw_sprite(sPoisonEffect,0,x,y);
if(drawFrz) draw_sprite(sFreezeEffect,0,x,y);