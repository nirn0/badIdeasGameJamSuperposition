function EnemyHurt(){
    var bonusDamage = 0;
    //calculate poison and freeze chances
    switch (global.currentWeapon) {
    	case 2:
            global.poisonChance += 20; break;
        case 7:
            global.poisonChance += 25; break;
        case 9:
            global.poisonChance += 25; break;
        case 12:
            global.poisonChance += 30; break;
        case 3:
            global.freezeChance += 20; break;
        case 8:
            global.freezeChance += 25; break;
        case 13:
            global.freezeChance += 30; break;
        case 16:
            global.freezeChance += 30; break;
    }
    switch (global.itemUsed) {
    	case 5:
            global.poisonChance += 10; break;
        case 6:
            global.freezeChance += 10; break;
        case 4:
            bonusDamage = oPlayerBattle.damage; break;
        case 9:
            bonusDamage = oPlayerBattle.damage*2; break;
    }
    switch (global.charm1) {
    	case 5:
            global.poisonChance += 10; break;
        case 6:
            global.freezeChance += 10; break;
        case 3:
            bonusDamage = oPlayerBattle.damage*0.1; break;
        case 9:
            bonusDamage = oPlayerBattle.damage*0.2; break;
    }
    switch (global.charm2) {
    	case 5:
            global.poisonChance += 10; break;
        case 6:
            global.freezeChance += 10; break;
        case 3:
            bonusDamage = oPlayerBattle.damage*0.1; break;
        case 9:
            bonusDamage = oPlayerBattle.damage*0.2; break;
    }
    switch (global.charm3) {
    	case 5:
            global.poisonChance += 10; break;
        case 6:
            global.freezeChance += 10; break;
        case 3:
            bonusDamage = oPlayerBattle.damage*0.1; break;
        case 9:
            bonusDamage = oPlayerBattle.damage*0.2; break;
    }
    
    oPlayerBattle.sprite_index = oPlayerBattle.spriteAttack;
    instance_create_layer(oPlayerBattle.x,oPlayerBattle.y,"Instances",oAttackEffect);
    
    var psn = random_range(0.1,100);
    var frz = random_range(0.1,100);
    with(oBattleManager){
        if(enemyToHurt == 1){
            audio_play_sound(snHurt, 1, false, 1, 0, 1, 1);
            oEnemyBattle1.hp -= (oPlayerBattle.damage + bonusDamage);
            oEnemyBattle1.hurt = true;
            oEnemyBattle1.timer = oEnemyBattle1.timerMax;
            if(psn < global.poisonChance) epoi1 = 4;
            if(frz < global.freezeChance){
                efre1 = true;
                oEnemyBattle1.drawFrz = true;
            }
            if(oEnemyBattle1.hp <= 0){
                oEnemyBattle1.die = true;
                oEnemyBattle1.timer = 30;
                //oEnemyBattle1.x = 480;
            }
        }
        else if(enemyToHurt == 2){
            audio_play_sound(snHurt, 1, false, 1, 0, 2, 1);
            oEnemyBattle2.hp -= (oPlayerBattle.damage + bonusDamage);
            oEnemyBattle2.hurt = true;
            oEnemyBattle2.timer = oEnemyBattle2.timerMax;
            if(psn < global.poisonChance) epoi2 = 4;
            if(frz < global.freezeChance){
                efre2 = true;
                oEnemyBattle2.drawFrz = true;
            }
            if(oEnemyBattle2.hp <= 0){
                oEnemyBattle2.die = true;
                oEnemyBattle2.timer = 30;
            }
        }
        else if(enemyToHurt == 3){
            audio_play_sound(snHurt, 1, false, 1, 0, 2, 1);
            oEnemyBattle3.hp -= (oPlayerBattle.damage + bonusDamage);
            oEnemyBattle3.hurt = true;
            oEnemyBattle3.timer = oEnemyBattle3.timerMax;
            if(psn < global.poisonChance) epoi3 = 4;
            if(frz < global.freezeChance){
                efre3 = true;
                oEnemyBattle3.drawFrz = true;
            }
            if(oEnemyBattle3.hp <= 0){
                oEnemyBattle3.die = true;
                oEnemyBattle3.timer = 30;
            }
        }
    }
    
    global.poisonChance = 0;
    global.freezeChance = 0;
    switch (global.itemUsed) {
        case 5:
        case 6:
        case 4:
        case 9:
            global.itemUsed = 0;
    }
}

function EnemyTryAttack(){
    switch (name){
    	case "enemy":
            if(point_distance(x,y,oPlayerBattle.x,oPlayerBattle.y) < 68){
                EnemyAttack();
            }
            else hasAttacked = true; break;
    	case "archer":
            if(point_distance(x,y,oPlayerBattle.x,oPlayerBattle.y) < 148){
                EnemyAttack();
            }
            else hasAttacked = true; break;
        case "charger":
            xTo = x;
            yTo = y;
            if(x == oPlayerBattle.x && y > oPlayerBattle.y){
                if(oPlayerBattle.y != 51 && !position_meeting(x,51,oBattleThing)) yTo = 51;
                else if(!position_meeting(x,99,oBattleThing)) yTo = 99;
            }
            else if(x == oPlayerBattle.x && y < oPlayerBattle.y){
                if(oPlayerBattle.y != 243 && !position_meeting(x,243,oBattleThing)) yTo = 243;
                else if(!position_meeting(x,195,oBattleThing)) yTo = 195;
            }
            else if(y == oPlayerBattle.y && x > oPlayerBattle.x){
                if(oPlayerBattle.x != 130 && !position_meeting(130,y,oBattleThing)) xTo = 130;
                else if(!position_meeting(178,y,oBattleThing)) xTo = 178;
            }
            else if(y == oPlayerBattle.y && x < oPlayerBattle.x){
                if(oPlayerBattle.x != 370 && !position_meeting(370,y,oBattleThing)) xTo = 370;
                else if(!position_meeting(322,y,oBattleThing)) xTo = 322;
            } 
            if(!collision_line(x,y,oPlayerBattle.x,oPlayerBattle.y,oEnemyBattle1,false,true) && !collision_line(x,y,oPlayerBattle.x,oPlayerBattle.y,oEnemyBattle2,false,true) && !collision_line(x,y,oPlayerBattle.x,oPlayerBattle.y,oEnemyBattle3,false,true)) EnemyAttack();
            else hasAttacked = true; break;
        case "ballistaStraight":
            var left = instance_create_layer(x,y,"Instances",oBallistaBolt);
            left.direction = 180;
            var up = instance_create_layer(x,y,"Instances",oBallistaBolt);
            up.direction = 90;
            var down = instance_create_layer(x,y,"Instances",oBallistaBolt);
            down.direction = 270;
            var right = instance_create_layer(x,y,"Instances",oBallistaBolt);
            hasAttacked = true;
            break;
        case "ballistaDiag":
            var left = instance_create_layer(x,y,"Instances",oBallistaBolt);
            left.direction = 45;
            var up = instance_create_layer(x,y,"Instances",oBallistaBolt);
            up.direction = 135;
            var down = instance_create_layer(x,y,"Instances",oBallistaBolt);
            down.direction = 225;
            var right = instance_create_layer(x,y,"Instances",oBallistaBolt);
            right.direction = 315;
            hasAttacked = true;
            break;
        case "immove":
        case "ballistaAll":
            var left = instance_create_layer(x,y,"Instances",oBallistaBolt);
            left.direction = 180;
            var up = instance_create_layer(x,y,"Instances",oBallistaBolt);
            up.direction = 90;
            var down = instance_create_layer(x,y,"Instances",oBallistaBolt);
            down.direction = 270;
            var right = instance_create_layer(x,y,"Instances",oBallistaBolt);
            var leftD = instance_create_layer(x,y,"Instances",oBallistaBolt);
            leftD.direction = 45;
            var upD = instance_create_layer(x,y,"Instances",oBallistaBolt);
            upD.direction = 135;
            var downD = instance_create_layer(x,y,"Instances",oBallistaBolt);
            downD.direction = 225;
            var rightD = instance_create_layer(x,y,"Instances",oBallistaBolt);
            rightD.direction = 315;
            hasAttacked = true;
            break;
        
        case "unstop":
            hasAttacked = true;
            break;
        case "energy":
            instance_create_layer(x+48,y,"Instances",oBomb);
            instance_create_layer(x-48,y,"Instances",oBomb);
            instance_create_layer(x,y+48,"Instances",oBomb);
            instance_create_layer(x,y-48,"Instances",oBomb);
            if(point_distance(x,y,oPlayerBattle.x,oPlayerBattle.y) < 70){
                EnemyAttack();
            }
            else hasAttacked = true; break;
        case "library":
            if(point_distance(x,y,oPlayerBattle.x,oPlayerBattle.y) < 68){
                EnemyAttack();
            }
            else hasAttacked = true; 
            instance_create_layer(x,y,"Instances",oLibraryAtkr) break;
        
        case "inverse":
            EnemyAttack();
            instance_create_layer(x,y,"Instances",oAttackEffectEnemy);
            break;
        
        default:
            hasAttacked = true;
            hasMoved = true; break;
    }
}

function EnemyAttack(){
    var dodgeChance = 0;
    //calculate dodge chance
    if(global.itemUsed == 8) dodgeChance += 10;
    if(global.charm1 == 4) dodgeChance += 5;
    if(global.charm2 == 4) dodgeChance += 5;
    if(global.charm3 == 4) dodgeChance += 5;
    if(global.dodgeAll) dodgeChance += 200;
    
    var hitChance = random_range(0.1,100);
    if(sprite_index != sprattack){
        sprite_index = sprattack;
        if(oPlayerBattle.x < x) image_xscale = -1;
        else image_xscale = 1;
        image_index = 0;
        if(name != "charger" && name != "archer" && hitChance > dodgeChance){
            global.hp -= 1;
            audio_play_sound(snHurt, 1, false, 1, 0, 2, 1);
            oPlayerBattle.xstart = oPlayerBattle.x;
            oPlayerBattle.shakeAmount = oPlayerBattle.shakeAmountMax;
            oPlayerBattle.drawAlpha = 1;
        }
    }
    if(name == "charger" && hitChance > dodgeChance){
        move_towards_point(xTo,yTo,3);
        var atkr = instance_create_layer(x,y,"Instances",oChargerAttacker);
        atkr.parent = id;
    }
    if(name == "archer"){
        var arrow = instance_create_layer(x,y,"Instances",oArrow);
        arrow.direction = point_direction(x,y,oPlayerBattle.x,oPlayerBattle.y);
    }
    if(global.itemUsed == 8) global.itemUsed = 0;
}
