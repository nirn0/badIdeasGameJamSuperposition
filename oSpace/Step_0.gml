if((available && oBattleManager.phase == 0) or allAvailable){
    image_speed = 1;
    image_alpha = min(image_alpha+0.02,1);
}
else{
    image_alpha = max(image_alpha-0.02,0.2);
    image_index = 0;
    image_speed = 0;
}

if(allAvailable){
    if(!instance_position(x,y,oEnemyBattle1) && !instance_position(x,y,oEnemyBattle2) && !instance_position(x,y,oEnemyBattle3)){
        allAvailable = false;
        available = false;
    }
    available = true;
    image_speed = 1;
    image_alpha = min(image_alpha+0.02,1);
}

dist = point_distance(x,y,oPlayerBattle.x,oPlayerBattle.y);