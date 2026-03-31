sprattack = oBattleManager.esprattack1;
sprdie = oBattleManager.esprdie1;
sprhurt = oBattleManager.esprhurt1;
sprnor = oBattleManager.esprnor1;

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
if(x == xTo && y == yTo && sprite_index == sprmove) sprite_index = sprnor;
if(oBattleManager.phase == 2 && !die && !oBattleManager.efre1){
    if(!hasMoved && timerMove < -20 && oPlayerBattle.shakeAmount == 0) EnemyMove();
    if(timerAttack == -10) EnemyTryAttack();
}

if(oBattleManager.phase == 0){
    if(!oBattleManager.efre1) drawFrz = false;
    if(name == "charger" && !die){
        x = instance_nearest(x,y,oSpace).x;
        y = instance_nearest(x,y,oSpace).y;
    }
}

if(sprite_index == sprattack && image_index > image_number-1){
    sprite_index = sprnor;
    hasAttacked = true;
}

dist = point_distance(x,y,oPlayerBattle.x,oPlayerBattle.y);

if(oBattleManager.ename1 == "unstop" && oBattleManager.phase != 2){
    x=orbit_target.x + lengthdir_x(orbit_length, orbit_place);
    y=orbit_target.y + lengthdir_y(orbit_length, orbit_place);
    orbit_place+=orbit_speed;
    image_angle = point_direction(x,y,oPlayerBattle.x,oPlayerBattle.y);
}