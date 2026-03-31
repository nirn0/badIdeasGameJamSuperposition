debugTimer--;
if(phase != 0 && phase < 8){
    if(debugTimer < 0) phase = 0;
}

if(phase == 0){     //Player turn
    if(playerHasAttacked && playerHasMoved){
        phase = 1;
    }
    if(ehp1 <= 0) oEnemyBattle1.x = 600;
    if(ehp2 <= 0) oEnemyBattle2.x = 600;
    if(ehp3 <= 0) oEnemyBattle3.x = 600;
    if(shouldCountParadoxDown){
        global.paradoxTimer--;
        shouldCountParadoxDown = false;
    }
    debugTimer = 5000;
}

if(phase == 1){     //Prepare for enemies
    playerHasAttacked = false;
    playerHasMoved = false;
    playerHasUsedItem = false;
    playerHasParadoxed = false;
    shouldCountParadoxDown = true;
    if(epoi1 > 0 && inflictPoison){
        oEnemyBattle1.hp -= floor(oEnemyBattle1.hpMax*0.15);
        inflictPoison = false;
        epoi1--;
    }
    if(!oEnemyBattle1.hurt && !oEnemyBattle2.hurt && !oEnemyBattle3.hurt){
        oEnemyBattle1.timerMove = oEnemyBattle1.timerMax;
        oEnemyBattle2.timerMove = oEnemyBattle2.timerMax;
        oEnemyBattle3.timerMove = oEnemyBattle3.timerMax;
        if(!oEnemyBattle1.die && ename1 != "unstop"){
            with(oEnemyBattle1){
                x = instance_nearest(x,y,oSpace).x;
                y = instance_nearest(x,y,oSpace).y;
            }
        }
        if(!oEnemyBattle2.die){
            with(oEnemyBattle2){
                x = instance_nearest(x,y,oSpace).x;
                y = instance_nearest(x,y,oSpace).y;
            }
        }
        if(!oEnemyBattle3.die){
            with(oEnemyBattle3){
                x = instance_nearest(x,y,oSpace).x;
                y = instance_nearest(x,y,oSpace).y;
            }
        }
        if(!oEnemyBattle1.die) phase = 2;
        else if(!oEnemyBattle2.die) phase = 4;
        else if(!oEnemyBattle3.die) phase = 6;
        else phase = 7;
    }
}

if(phase == 2){     //Enemy 1
    inflictPoison = true;
    switch (efre1) {
    	case false:
        if(oEnemyBattle1.hasAttacked && oEnemyBattle1.hasMoved){
            timer = timerMax;
            oEnemyBattle1.timerMove = oEnemyBattle1.timerMax;
            oEnemyBattle2.timerMove = oEnemyBattle2.timerMax;
            oEnemyBattle3.timerMove = oEnemyBattle3.timerMax;
            phase = 3;
        } break;
        case true:
            efre1 = false;
            timer = timerMax;
            phase = 3; break;
    }
}

if(phase == 3 && timer < 0){ //Pause between enemies 1 and 2
    if(epoi2 > 0 && inflictPoison){
        oEnemyBattle2.hp -= floor(oEnemyBattle2.hpMax*0.15);
        inflictPoison = false;
        epoi2--;
    }
    if(!oEnemyBattle2.die) phase = 4;
    else if(!oEnemyBattle3.die) phase = 6;
    else phase = 7;
}

if(phase == 4){     //Enemy 2
    inflictPoison = true;
    switch (efre2) {
    	case false:
            if(oEnemyBattle2.hasAttacked && oEnemyBattle2.hasMoved){
                timer = timerMax;
                oEnemyBattle1.timerMove = oEnemyBattle1.timerMax;
                oEnemyBattle2.timerMove = oEnemyBattle2.timerMax;
                oEnemyBattle3.timerMove = oEnemyBattle3.timerMax;
                phase = 5;
            } break;
        case true:
            efre2 = false;
            timer = timerMax;
            phase = 5; break;
    }
}

if(phase == 5 && timer < 0){ //Pause between enemies 2 and 3
    if(epoi3 > 0 && inflictPoison){
        oEnemyBattle3.hp -= floor(oEnemyBattle3.hpMax*0.15);
        inflictPoison = false;
        epoi3--;
    }
    if(!oEnemyBattle3.die) phase = 6;
    else phase = 7;
}

if(phase == 6){     //Enemy 3
    inflictPoison = true;
    switch (efre3) {
    	case false:
            if(oEnemyBattle3.hasAttacked && oEnemyBattle3.hasMoved){
                timer = timerMax;
                phase = 7;
            } break;
        case true:
            efre3 = false;
            timer = timerMax;
            phase = 7; break;
    }
}

if(phase == 7){     //Reset everything and prepare for player
    playerHasAttacked = false;
    playerHasMoved = false;
    playerHasParadoxed = false;
    playerHasUsedItem = false;
    oEnemyBattle1.hasAttacked = false;
    oEnemyBattle1.hasMoved = false;
    oEnemyBattle2.hasAttacked = false;
    oEnemyBattle2.hasMoved = false;
    oEnemyBattle3.hasAttacked = false;
    oEnemyBattle3.hasMoved = false;
    if(oEnemyBattle1.die) oEnemyBattle1.x = 1000;
    if(oEnemyBattle2.die) oEnemyBattle2.x = 1000;
    if(oEnemyBattle3.die) oEnemyBattle3.x = 1000;
    if(timer < 0) phase = 0;
    global.dodgeAll = false;
}

timer--;

if(oEnemyBattle1.die && oEnemyBattle2.die && oEnemyBattle3.die) phase = 8;
if(phase == 8 && oPlayerBattle.sprite_index != oPlayerBattle.spriteAttack){
    if(global.tutorial != 0) phase = 9;
    else if(!instance_exists(oMerchant) && !instance_exists(oHealer)){
        with(oPlayerBattle){
            if(sprite_index != spriteVictory && !victDance){
                sprite_index = spriteVictory;
                image_speed = 1;
            }
            if(sprite_index == spriteVictory && image_index > image_number-1){
                victDance = true;
                sprite_index = spriteRun;
                xTo = 240;
                yTo = -20;
            }
        }
        if(oEncounterCarrier.num < 200){
            if(!hasMadeLootMngr && oPlayerBattle.victDance && oPlayerBattle.y == -20){
                instance_create_layer(x,y,"Instances",oLootManager);
                hasMadeLootMngr = true;
            }
        }
        else if(oEncounterCarrier.num != 300 && oPlayerBattle.y == -20){
            if(!instance_exists(oFade)){
                var fader = instance_create_depth(x,y,-999,oFade);
                fader.targetRoom = rmBase;
                switch (global.currentExpedition){
                	case 1:
                        global.paradoxesUnlocked[1] = true; break;
                    case 2:
                        global.paradoxesUnlocked[2] = true; break;
                    case 3:
                        global.paradoxesUnlocked[3] = true; break;
                }
            }
        }
        else if(oPlayerBattle.y == -20){
            if(!instance_exists(oFade)){
                var fader = instance_create_depth(x,y,-999,oFade);
                fader.targetRoom = rmOutro;
            }
        }
    }
}

if(oEnemyBattle1.hp <= 0){
    if(oEnemyBattle1.die != true){
        oEnemyBattle1.timer = 60;
        oEnemyBattle1.die = true;
    }
}
if(oEnemyBattle2.hp <= 0){
    if(oEnemyBattle2.die != true){
        oEnemyBattle2.timer = 60;
        oEnemyBattle2.die = true;
    }
}
if(oEnemyBattle3.hp <= 0){
    if(oEnemyBattle3.die != true){
        oEnemyBattle3.timer = 60;
        oEnemyBattle3.die = true;
    }
}

if(global.itemUsed == 1){
    global.hp = min(global.hp+1,global.hpMax);
    global.itemUsed = 0;
}
if(global.itemUsed == 7){
    global.hp = global.hpMax;
    global.itemUsed = 0;
}

if(ename1 == "unstop" && !oEnemyBattle2.die){
    with(oEnemyBattle1){
        if(position_meeting(x,y,oEnemyBattle2)){
            var store = oPlayerBattle.damage;
            oPlayerBattle.damage = 40;
            other.enemyToHurt = 1;
            EnemyHurt();
            oPlayerBattle.damage = 40;
            other.enemyToHurt = 2;
            EnemyHurt();
            oPlayerBattle.damage = store;
            var rand = floor(random_range(1,5.9));
            var rand2 = rand+1;
            oEnemyBattle2.x = (rand*48)+82;
            oPlayerBattle.x = (rand2*48)+82;
            oPlayerBattle.y = 243;
            oPlayerBattle.xTo = oPlayerBattle.x;
            oPlayerBattle.yTo = oPlayerBattle.y;
            oEnemyBattle2.y = 51;
        }
    }
}

if(ename1 == "energy"){
    if(oEnemyBattle2.hp > 0 or oEnemyBattle3.hp > 0) oEnemyBattle1.hp = 99999;
    else if(oEnemyBattle1.hp > oEnemyBattle1.hpMax) oEnemyBattle1.hp = oEnemyBattle1.hpMax;
}

if(global.hp <= 0) phase = 10;
if(phase == 10){
    if(oPlayerBattle.sprite_index != oPlayerBattle.spriteDie){
        oPlayerBattle.sprite_index = oPlayerBattle.spriteDie;
        instance_create_layer(240,135,"Instances",oCameraZoomDie);
        global.playerDead = true;
        timer = timerMax
    }
    else if(oPlayerBattle.image_index > oPlayerBattle.image_number-1 && !instance_exists(oFade)){
        var fader = instance_create_depth(x,y,-999,oFade);
        fader.targetRoom = rmBase;
    }
    if(timer < 0) drawAlpha = min(drawAlpha+0.01,1);
}

if(phase == 9){
    switch (global.tutorial){
        case 1:
            oEnemyBattle1.x = 600;
            oEnemyBattle2.x = 600;
            oEnemyBattle3.x = 800;
            if(oPlayerBattle.sprite_index != sPlayerWake) oPlayerBattle.sprite_index = sPlayerWake;
            if(oPlayerBattle.sprite_index == sPlayerWake && oPlayerBattle.image_index > oPlayerBattle.image_number-1){
                global.tutorial = 2;
            }break;
    
        case 2:
            oPlayerBattle.sprite_index = sPlayerIdle;
            NewTextBox("Oh my! A cat! Are you quite alright?",sTutorialPortrait);
            NewTextBox("...",sTutorialPortrait);
            NewTextBox("Yes, you don't seem hurt. But you must be awfully confused.\nMy name is Igor. Follow me and I'll take you someplace safe.",sTutorialPortrait);
            NewTextBox("Oh, and take this sword. It's dangerous here in the Backend; you'll need it.",sTutorialPortrait);
            global.tutorial = 3; break;
        
        case 3: 
            if(!instance_exists(oText) && !instance_exists(oLootOpt1)){
                instance_create_layer(240,135,"Instances",oLootOpt1);
            } break;
        
        case 4:
           NewTextBox("Don't worry. The abstract nature of this place means even someone like you can\nwield a human sword. Now come! This way!",sTutorialPortrait);
           global.tutorial = 5; break;
       
        case 5:
            if(!instance_exists(oText)){
                oPlayerBattle.xTo = 240;
                oPlayerBattle.yTo = -20;
                global.tutorial = 6;
            } break;
            
        case 6:
            if(!instance_exists(oFade) && oPlayerBattle.x == 240 && oPlayerBattle.y == -20){
                var fader = instance_create_depth(x,y,-999,oFade);
                fader.targetRoom = rmPath;
            } break;
            
        case 7:
            NewTextBox("We're going to someone who understands this place - the Backend of Reality -\na lot better than I.",sTutorialPortrait);
            NewTextBox("If you think you can- ",sTutorialPortrait);
            global.tutorial = 8; break;
    
        case 8:
           if(!instance_exists(oText)) global.tutorial = 9; break;
        
        case 9:
            with(oEnemyBattle1){
                image_xscale = -1;
                if(distance_to_point(322,147) > 4) move_towards_point(322,147,2);
                else{
                    x = 322;
                    y = 147;
                    speed = 0;
                }
            }
            if(oEnemyBattle1.x == 322){
               global.tutorial = 10;
               NewTextBox("Ah! A monster! You'll have to defend yourself with your sword!",sTutorialPortrait);
            } break;
       
        case 10:
            if(!instance_exists(oText)){
                phase = 0;
                global.tutorial = 11;
            } break;
            
        case 11:
            NewTextBox("Wow! That was incredible!",sTutorialPortrait);
            NewTextBox("You defeated that monster quite easily.",sTutorialPortrait);
            NewTextBox("Oh, look! The monster dropped something. You should take it.",sTutorialPortrait);
            global.tutorial = 12; break;
        
        case 12:
            if(!instance_exists(oText) && !instance_exists(oLootOpt2)){
                instance_create_layer(240,135,"Instances",oLootOpt2);
            } break;
            
        case 13:
            NewTextBox("That tool will help you defeat any more monsters we run in to.",sTutorialPortrait);
            NewTextBox("Now, just this way.",sTutorialPortrait);
            global.tutorial = 14; break;
        
        case 14:
            if(!instance_exists(oText)){
                oPlayerBattle.xTo = 240;
                oPlayerBattle.yTo = -20;
                global.tutorial = 15;
            } break;
            
        case 15:
            if(!instance_exists(oFade) && oPlayerBattle.x == 240 && oPlayerBattle.y == -20){
                var fader = instance_create_depth(x,y,-999,oFade);
                fader.targetRoom = rmPath;
            } break;
            
        case 16:
            NewTextBox("Oh, look. Another monster. See if you can defeat it.",sTutorialPortrait); 
            NewTextBox("That tool you got extends your weapon's range by one, so it should be easier than\nthe last time.",sTutorialPortrait);
            global.tutorial = 17; break;
    
        case 17:
           if(!instance_exists(oText)) global.tutorial = 18; break;
        
        case 18:
            if(!instance_exists(oText)){
                phase = 0;
                global.tutorial = 19;
            } break;
            
        case 19:
            NewTextBox("Nice! I think you're starting to get the hang of it!",sTutorialPortrait);
            NewTextBox("It should only be a bit further now.",sTutorialPortrait);
            NewTextBox("Look! An apple! Take it.",sTutorialPortrait);
            global.tutorial = 20; break;
        
        case 20:
            if(!instance_exists(oText) && !instance_exists(oLootOpt3)){
                instance_create_layer(240,135,"Instances",oLootOpt3);
            } break;
            
        case 21:
            NewTextBox("That's an item that will give you a boost whenever you want.\nNow, let's keep moving",sTutorialPortrait);
            global.tutorial = 22; break;
        
        case 22:
            if(!instance_exists(oText)){
                oPlayerBattle.xTo = 240;
                oPlayerBattle.yTo = -20;
                global.tutorial = 23;
            } break;
            
        case 23:
            if(!instance_exists(oFade) && oPlayerBattle.x == 240 && oPlayerBattle.y == -20){
                var fader = instance_create_depth(x,y,-999,oFade);
                fader.targetRoom = rmPath;
            } break;
            
        case 24:
            NewTextBox("You look kind of hurt. Try eating that apple to heal.",sTutorialPortrait); 
            global.tutorial = 25; break;
       
        case 25:
            if(!instance_exists(oText)){
                phase = 0;
                global.tutorial = 26;
            } break;
            
        case 26:
            NewTextBox("Well done! Our destination is just over here now.",sTutorialPortrait);
            global.tutorial = 27; break;
            
        case 27:
            if(!instance_exists(oText)){
                oPlayerBattle.xTo = 240;
                oPlayerBattle.yTo = -20;
                global.tutorial = 28;
            } break;
            
        case 28:
            if(!instance_exists(oFade) && oPlayerBattle.x == 240 && oPlayerBattle.y == -20){
                var fader = instance_create_depth(x,y,-999,oFade);
                fader.targetRoom = rmBase;
            } break;
    }
}