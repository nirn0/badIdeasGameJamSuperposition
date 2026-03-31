if(!statusMenu){
    draw_set_colour(c_white);
    draw_set_alpha(1);
    
    if(global.item1 != 0){
        if(!item1) draw_sprite(sItemIcons,global.item1-1, 1800,300);
        else draw_sprite_ext(sItemOptions,global.item1-1, 1600,300,2,2,0,c_white,1);
    }
    else draw_sprite(sBlank,0, 1800,300);
        
    if(global.item2 != 0){
        if(!item2) draw_sprite(sItemIcons,global.item2-1, 1800,400);   //add "else: draw blank version"
        else draw_sprite_ext(sItemOptions,global.item2-1, 1600,400,2,2,0,c_white,1);
    }
    else draw_sprite(sBlank,0, 1800,400);
        
    if(global.item3 != 0){
        if(!item3) draw_sprite(sItemIcons,global.item3-1, 1800,500);
        else draw_sprite_ext(sItemOptions,global.item3-1, 1600,500,2,2,0,c_white,1);
    }
    else draw_sprite(sBlank,0, 1800,500);
        
    if(global.item4 != 0){
        if(!item4) draw_sprite(sItemIcons,global.item4-1, 1800,600);
        else draw_sprite_ext(sItemOptions,global.item4-1, 1600,600,2,2,0,c_white,1);
    }
    else draw_sprite(sBlank,0, 1800,600);
        
    if(global.item5 != 0){
        if(!item5) draw_sprite(sItemIcons,global.item5-1, 1800,700);
        else draw_sprite_ext(sItemOptions,global.item5-1, 1600,700,2,2,0,c_white,1);
    }
    else draw_sprite(sBlank,0, 1800,700);
        
    if(global.item6 != 0){
        if(!item6) draw_sprite(sItemIcons,global.item6-1, 1800,800);
        else draw_sprite_ext(sItemOptions,global.item6-1, 1600,800,2,2,0,c_white,1);
    }
    else draw_sprite(sBlank,0, 1800,800);
    
    if(global.currentWeapon == global.weapon1 && global.weapon1 != 0) draw_sprite(sWeaponAura,0,100,800);
    else if(global.weapon2 != 0) draw_sprite(sWeaponAura,0,300,800);
    
    if(global.weapon1 != 0) draw_sprite(sWeaponOptions,global.weapon1-1, 100,800);
    else draw_sprite(sBlank,0, 100,800);
    
    if(global.weapon2 != 0) draw_sprite(sWeaponOptions,global.weapon2-1, 300,800);
    else draw_sprite(sBlank,0, 300,800);
    
    if(global.charm1 != 0) draw_sprite(sCharmIcons,global.charm1-1, 1500,100);
    else draw_sprite(sBlank,0, 1500,100);
    
    if(global.charm2 != 0) draw_sprite(sCharmIcons,global.charm2-1, 1650,100);
    else draw_sprite(sBlank,0, 1650,100);
    
    if(global.charm3 != 0) draw_sprite(sCharmIcons,global.charm3-1, 1800,100);
    else draw_sprite(sBlank,0, 1800,100);
    
    draw_sprite(sBlank,0, 150,400);
    if(global.paradoxTimer > 0){
        draw_sprite_ext(sParadoxes,global.paradoxEquipped,150,400,1,1,0,c_grey,1);
        draw_sprite_ext(sParaCount,global.paradoxTimer-1,150,400,3,3,0,c_white,1);
    }
    else draw_sprite_ext(sParadoxes,global.paradoxEquipped,150,400,1,1,0,c_white,1);
}

else{
    draw_set_colour(c_blue);
    draw_set_alpha(0.4);
    draw_rectangle(-1,-1,2000,1100,false);
    draw_set_alpha(1);
    
    if(global.item1 != 0){
        draw_sprite_ext(sItemOptions,global.item1-1, 400,600,2,2,0,c_white,1);
    }
    else draw_sprite(sBlank,0, 400,600);
        
    if(global.item2 != 0){
        draw_sprite(sItemOptions,global.item2-1, 500,600);
    }
    else draw_sprite(sBlank,0,500,600);
        
    if(global.item3 != 0){
        draw_sprite(sItemOptions,global.item3-1, 600,600);
    }
    else draw_sprite(sBlank,0, 600,600);
        
    if(global.item4 != 0){
        draw_sprite(sItemOptions,global.item4-1, 700,600);
    }
    else draw_sprite(sBlank,0, 700,600);
        
    if(global.item5 != 0){
        draw_sprite(sItemOptions,global.item5-1, 800,600);
    }
    else draw_sprite(sBlank,0, 800,600);
        
    if(global.item6 != 0){
        draw_sprite(sItemOptions,global.item6-1, 900,600);
    }
    else draw_sprite(sBlank,0, 900,600);
    
    if(global.weapon1 != 0) draw_sprite(sWeaponOptions,global.weapon1-1, 100,700);
    else draw_sprite(sBlank,0, 100,700);
    
    if(global.weapon2 != 0) draw_sprite(sWeaponOptions,global.weapon2-1, 250,700);
    else draw_sprite(sBlank,0, 250,700);
    
    if(global.charm1 != 0) draw_sprite(sCharmOptions,global.charm1-1, 700,200);
    else draw_sprite(sBlank,0, 700,200);
    
    if(global.charm2 != 0) draw_sprite(sCharmOptions,global.charm2-1, 850,200);
    else draw_sprite(sBlank,0,850,200);
    
    if(global.charm3 != 0) draw_sprite(sCharmOptions,global.charm3-1, 1000,200);
    else draw_sprite(sBlank,0,1000,200);
}

if(oBattleManager.phase == 0){
    if(global.tutorial != 0){
        if(global.tutorial < 23){
            switch (action){
            	case 0:
                    draw_sprite_ext(sTutorialWalk,0,1050,150,2,2,0,c_white,1); break;
                case 1:
                    draw_sprite_ext(sTutorialAttack,0,1050,150,2,2,0,c_white,1); break;
            }
        }
        if(global.tutorial > 23) draw_sprite_ext(sTutorialItem,0,1050,150,2,2,0,c_white,1);
    }
    draw_sprite(sTutorialEndTurn,0,1800,1000);
    if(!oBattleManager.playerHasAttacked && !oBattleManager.playerHasMoved) draw_sprite(sTutorialSwap,action,1800,900);
    draw_sprite(sTutSwapWeapons,0,100,1000);
}

draw_sprite(sHearts,global.hp >= 1,100,100);
draw_sprite(sHearts,global.hp >= 2,150,100);
draw_sprite(sHearts,global.hp >= 3,200,100);
draw_sprite(sHearts,global.hp >= 4,250,100);
draw_sprite(sHearts,global.hp >= 5,300,100);
draw_sprite(sHearts,global.hp >= 6,350,100);
draw_sprite(sHearts,global.hp >= 7,400,100);
draw_sprite(sHearts,global.hp >= 8,450,100);
draw_sprite(sHearts,global.hp >= 9,500,100);
draw_sprite(sHearts,global.hp >= 10,550,100);

if(sprite_index == spriteHurt){
    var xc = 0;
    switch (global.hp){
        case 0: xc = 100; break;
    	case 1: xc = 150; break;
        case 2: xc = 200; break;
        case 3: xc = 250; break;
        case 4: xc = 300; break;
        case 5: xc = 350; break;
        case 6: xc = 400; break;
        case 7: xc = 450; break;
        case 8: xc = 500; break;
        case 9: xc = 550; break;
    }
    draw_sprite_ext(sHeartHurt,0,xc,100,random_range(1.04,1.06),random_range(1.04,1.06),0,c_white,drawAlpha);
}
drawAlpha = max(drawAlpha-0.01,0);

//draw_text(100,100,global.paradoxEquipped)