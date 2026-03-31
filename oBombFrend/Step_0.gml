if(oBattleManager.phase == 0 && shouldDecrease){
    timer--;
    shouldDecrease = false;
}
if(oBattleManager.phase > 0) shouldDecrease = true;

if(timer == 0){
    sprite_index = sExplode;
    audio_play_sound(snExplode, 1, false, 1, 0, 0.5, 1);
    audio_play_sound(snHurt, 1, false, 1, 0, 1, 1);
    audio_play_sound(snHurt, 1, false, 1, 0, 0.5, 1);
    audio_play_sound(snClick, 1, false, 1, 0, 1, 1);
}
if(sprite_index == sExplode){
    if(image_index > image_number-1){
        if(point_distance(x,y,oEnemyBattle1.x,oEnemyBattle1.y) < 68){
            audio_play_sound(snHurt, 1, false, 1, 0, 1, 1);
            oEnemyBattle1.hp -= 30;
        }
        if(point_distance(x,y,oEnemyBattle2.x,oEnemyBattle2.y) < 68){
            audio_play_sound(snHurt, 1, false, 1, 0, 1, 1);
            oEnemyBattle2.hp -= 30;
        }
        if(point_distance(x,y,oEnemyBattle3.x,oEnemyBattle3.y) < 68){
            audio_play_sound(snHurt, 1, false, 1, 0, 1, 1);
            oEnemyBattle3.hp -= 30;
        }
        instance_destroy();
    }
}

if(timer == 1) sprite_index = sBomb3;
else if(timer == 2) sprite_index = sBomb2;
else if(timer > 2) sprite_index = sBomb1;