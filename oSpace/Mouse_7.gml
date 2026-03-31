if(oBattleManager.phase == 0 && available){
    if(x < oPlayerBattle.x) oPlayerBattle.facingLeft = true;
    else oPlayerBattle.facingLeft = false;
    if(oPlayerBattle.action == 0){
        audio_play_sound(snClick, 1, false, 1, 0, 2, 1);
        oPlayerBattle.xTo = x;
        oPlayerBattle.yTo = y;
        if(!allAvailable) oBattleManager.playerHasMoved = true;
        else{
            instance_create_layer(x,y,"Instances",oSwapPos);
        }
    }
    else{
        if(instance_position(x,y,oEnemyBattle1)){
            audio_play_sound(snHurt, 1, false, 1, 0, 1, 1);
            oBattleManager.enemyToHurt = 1;
            EnemyHurt();
            oBattleManager.playerHasAttacked = true;
        }
        if(instance_position(x,y,oEnemyBattle2)){
            audio_play_sound(snHurt, 1, false, 1, 0, 1, 1);
            oBattleManager.enemyToHurt = 2;
            EnemyHurt();
            oBattleManager.playerHasAttacked = true;
        }
        if(instance_position(x,y,oEnemyBattle3)){
            audio_play_sound(snHurt, 1, false, 1, 0, 1, 1);
            oBattleManager.enemyToHurt = 3;
            EnemyHurt();
            oBattleManager.playerHasAttacked = true;
        }
    }
}