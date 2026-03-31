if(oBattleManager.playerHasAttacked && !oBattleManager.playerHasMoved) action = 0;
if(oBattleManager.playerHasMoved && !oBattleManager.playerHasAttacked) action = 1;
if(oBattleManager.phase == 0 && !statusMenu){
    if(keyboard_check_pressed(ord("S"))){
        if(!oBattleManager.playerHasAttacked && !oBattleManager.playerHasMoved) action++;
        //else{
            //oBattleManager.playerHasAttacked = true;
            //oBattleManager.playerHasMoved = true; }
    }
    if(keyboard_check_pressed(ord("T"))){
        oBattleManager.playerHasAttacked = true;
        oBattleManager.playerHasMoved = true;
    }
    if(keyboard_check_pressed(vk_shift)){
        if(global.currentWeapon == global.weapon1 && global.weapon2 != 0) global.currentWeapon = global.weapon2;
        else global.currentWeapon = global.weapon1;
    }
    if(!oBattleManager.playerHasUsedItem){
        if(keyboard_check_pressed(ord("1")) && global.item1 != 0){
            item1 = !item1;
            item2 = false;
            item3 = false;
            item4 = false;
            item5 = false;
            item6 = false;
        }
        if(keyboard_check_pressed(ord("2")) && global.item2 != 0){
            item1 = false;
            item2 = !item2;
            item3 = false;
            item4 = false;
            item5 = false;
            item6 = false;
        }
        if(keyboard_check_pressed(ord("3")) && global.item3 != 0){
            item1 = false;
            item2 = false;
            item3 = !item3;
            item4 = false;
            item5 = false;
            item6 = false;
        }
        if(keyboard_check_pressed(ord("4")) && global.item4 != 0){
            item1 = false;
            item2 = false;
            item3 = false;
            item4 = !item4;
            item5 = false;
            item6 = false;
        }
        if(keyboard_check_pressed(ord("5")) && global.item5 != 0){
            item1 = false;
            item2 = false;
            item3 = false;
            item4 = false;
            item5 = !item5;
            item6 = false;
        }
        if(keyboard_check_pressed(ord("6")) && global.item6 != 0){
            item1 = false;
            item2 = false;
            item3 = false;
            item4 = false;
            item5 = false;
            item6 = !item6;
        }
    }
    if(!oBattleManager.playerHasParadoxed){
        if(keyboard_check_pressed(ord("P")) && global.paradoxTimer <= 0){
            paradoxing = true;
            oBattleManager.playerHasParadoxed = true;
            global.paradoxTimer = 3;
            if(global.paradoxEquipped == 1){
                with(oSpace) allAvailable = true;
            }
            else if(global.paradoxEquipped == 3){
                instance_create_layer(x+48,y,"Instances",oBombFrend);
                instance_create_layer(x-48,y,"Instances",oBombFrend);
                instance_create_layer(x,y+48,"Instances",oBombFrend);
                instance_create_layer(x,y-48,"Instances",oBombFrend);
            }
            else if(global.paradoxEquipped == 2){
                global.dodgeAll = true;
            }
            else if(global.paradoxEquipped == 4){
                var ran1 = random_range(0,1.99);
                var ran2 = random_range(0,1.99);
                var ran3 = random_range(0,1.99);
                if(oEnemyBattle1.hp > 0){
                    if(ran1 < 1) oBattleManager.epoi1 = 4;
                    else{
                        oBattleManager.efre1 = true;
                        oEnemyBattle1.drawFrz = true;
                    }
                }
                if(oEnemyBattle2.hp > 0){
                    if(ran2 < 1) oBattleManager.epoi2 = 4;
                    else{
                        oBattleManager.efre2 = true;
                        oEnemyBattle2.drawFrz = true;
                    }
                }
                if(oEnemyBattle3.hp > 0){
                    if(ran3 < 1) oBattleManager.epoi3 = 4;
                    else{
                        oBattleManager.efre3 = true;
                        oEnemyBattle3.drawFrz = true;
                    }
                }
            }
        }
    }
}
if(action > 1) action = 0;
if(global.paradoxTimer > 0) paradoxing = false;
if(global.weapon2 == 0) global.currentWeapon = global.weapon1;

//if(oBattleManager.phase == 0 && keyboard_check_pressed(vk_escape)) statusMenu = !statusMenu;
if(oBattleManager.phase != 0) statusMenu = false;

script_execute(state);

depth = -bbox_bottom;

if(oBattleManager.phase == 0){
    switch (global.currentWeapon) {
    	case 1:
            damage = 10;
            attackRange = 6; break;
        case 2:
        case 3:
            damage = 15;
            attackRange = 1; break;
        case 4:
            damage = 20;
            attackRange = 1; break
        case 5:
            damage = 15;
            attackRange = 2; break;
        case 6:
            damage = 30;
            attackRange = 1; break;
        case 7:
        case 8:
            damage = 25;
            attackRange = 1; break;
        case 9:
            damage = 20;
            attackRange = 2; break;
        case 10:
            damage = 20;
            attackRange = 6; break;
        case 11:
            damage = 45;
            attackRange = 2; break;
        case 12:
        case 13:
            damage = 35;
            attackRange = 2; break;
        case 14:
            damage = 25;
            attackRange = 2; break;
        case 15:
            damage = 35;
            attackRange = 3; break;
        case 16:
            damage = 30;
            attackRange = 3; break;
        case 17:
            damage = 30;
            attackRange = 6; break;
    }
    
    if(global.itemUsed == 3){
        moveBonus++;
        global.itemUsed = 11;
    }
    if(global.itemUsed == 2){
        attackBonus++;
        global.itemUsed = 10;
    }
    
    if(action == 0){
        switch (moveRange+moveBonus){
        	case 1: range = 68; break;
        	case 2: range = 136; break;
            case 3: range = 174; break;
        	case 4: range = 272; break;
            default: range = 310; break;
        }
        with(oSpace){
            if(!other.paradoxing && !instance_position(x,y,oEnemyBattle1) && !instance_position(x,y,oEnemyBattle2) && !instance_position(x,y,oEnemyBattle3)){ 
                if(point_distance(x,y,other.x,other.y) < other.range && point_distance(x,y,other.x,other.y) > 0) available = true; 
                else available = false;
            }
            else available = false;
        }
    }
    else{
        switch (attackRange+attackBonus){
        	case 1: range = 68; break;
        	case 2: range = 136; break;
            case 3: range = 174; break;
        	case 4: range = 272; break;
            default: range = 310; break;
        }
        with(oSpace){
            if(!other.paradoxing && instance_position(x,y,oEnemyBattle1) or instance_position(x,y,oEnemyBattle2) or instance_position(x,y,oEnemyBattle3)){
                if(point_distance(x,y,other.x,other.y) < other.range && point_distance(x,y,other.x,other.y) > 0) available = true; 
                else available = false;
            }
            else available = false;
        }
    }
    if(oBattleManager.playerHasAttacked && oBattleManager.playerHasMoved) oBattleManager.phase = 1;
}
else{
    action = 0;
    with(oSpace) available = false;
    if(global.itemUsed == 10){
        attackBonus--;
        global.itemUsed = 0;
    }
    if(global.itemUsed == 11){
        moveBonus--;
        global.itemUsed = 0;
    }
}

timer--;
if(timer < 0) timer = 6;

if(facingLeft) image_xscale = -1;
else image_xscale = 1;

if(shakeAmount != 0){
    x = xstart+shakeAmount;
    if(timer == 6) shakeAmount = shakeAmount*-0.9;
    if(shakeAmount > -2 && shakeAmount < 2){
        sprite_index = spriteIdle;
        shakeAmount = 0;
    }
    else sprite_index = spriteHurt;
}

if(sprite_index == spriteAttack && image_index > image_number-1) sprite_index = spriteIdle;
if(global.tutorial == 1 && sprite_index != sPlayerWake) sprite_index = sPlayerWake;