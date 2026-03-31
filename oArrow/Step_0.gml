timer--;
if(timer > 0){
    speed = 0;
    image_alpha = 0;
}
else{
    image_alpha = 1;
    image_angle = direction;
    speed = 3;
}

if(point_distance(x,y,xstart,ystart) > 500) instance_destroy();

if(hurt){
    var dodgeChance = 0;
    //calculate dodge chance
    if(global.itemUsed == 8) dodgeChance += 10;
    if(global.charm1 == 4) dodgeChance += 5;
    if(global.charm2 == 4) dodgeChance += 5;
    if(global.charm3 == 4) dodgeChance += 5;
    if(global.dodgeAll) dodgeChance += 200;
    
    var hitChance = random_range(0.1,100);
    if(hitChance > dodgeChance){
        global.hp -= 1;
        audio_play_sound(snHurt, 1, false, 1, 0, 2, 1);
        oPlayerBattle.xstart = oPlayerBattle.x;
        oPlayerBattle.shakeAmount = oPlayerBattle.shakeAmountMax;
        oPlayerBattle.drawAlpha = 1;
    }
    instance_destroy();
}