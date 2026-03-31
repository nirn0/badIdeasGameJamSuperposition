depth = -bbox_bottom;
if(hurt){
    sprite_index = sprhurt;
}
timer--;
timerMove--;
timerAttack--;
if(timer == 0 && !die){
    hurt = false;
    sprite_index = sprnor;
}
if(timer < 0 && die){
    hurt = false;
    image_alpha = max(image_alpha-0.01,0);
}
if(die){
    hasAttacked = true;
    hasMoved = true;
    if(sprite_index != sprdie){
        sprite_index = sprdie;
        image_speed = 1;
    }
    else if(image_index > image_number-1) x = 1000;
}

if(oBattleManager.phase == 6 && !die && !oBattleManager.efre3){
    if(!hasMoved && timerMove < -20 && oPlayerBattle.shakeAmount == 0) EnemyMove();
    if(timerAttack == -10) EnemyTryAttack();
}

if(oBattleManager.phase == 0){
    if(!oBattleManager.efre3) drawFrz = false;
    if(name == "charger" && !die){
        x = instance_nearest(x,y,oSpace).x;
        y = instance_nearest(x,y,oSpace).y;
    }
}

if(x == xTo && y == yTo && sprite_index == sprmove) sprite_index = sprnor;
if(sprite_index == sprattack && image_index > image_number-1){
    sprite_index = sprnor;
    hasAttacked = true;
}
if(!hurt && !die && sprite_index != sprattack){
    sprite_index = sprnor;
}