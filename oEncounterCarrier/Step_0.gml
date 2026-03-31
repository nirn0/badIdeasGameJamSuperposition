if(room == rmPath){
    if(!restarted){
        ehp1 = 0;
        ename1 = "enemy";
        esprnor1 = sEnemyIdle1;
        esprmove1 = sEnemyMove1;
        esprattack1 = sEnemyAttack1;
        esprhurt1 = sEnemyHurt1;
        esprdie1 = sEnemyHurt1;
        eX1 = 0;
        eY1 = 0;
        
        ehp2 = 0;
        ename2 = "enemy";
        esprnor2 = sEnemy;
        esprmove2 = sEnemy;
        esprattack2 = sEnemy;
        esprhurt2 = sEnemy;
        esprdie2 = sEnemy;
        eX2 = 0;
        eY2 = 0;
        
        ehp3 = 0;
        ename3 = "enemy";
        esprnor3 = sEnemy;
        esprmove3 = sEnemy;
        esprattack3 = sEnemy;
        esprhurt3 = sEnemy;
        esprdie3 = sEnemy;
        eX3 = 0;
        eY3 = 0;
        
        restarted = true;
    }
    shouldGive = true;
    global.pendingLoot = 0;
}
else{
    restarted = false;
    canClick = true;
}


switch (num){
    	case 1:
            ehp1 = 30;
            ename1 = "enemy";
            esprnor1 = sEnemyIdle1;
            esprmove1 = sEnemyMove1;
            esprattack1 = sEnemyAttack1;
            esprhurt1 = sEnemyHurt1;
            esprdie1 = sEnemyHurt1;
            eX1 = 322;
            eY1 = 147;
            break;
        
        case 2:
            ehp1 = 30;
            ename1 = "enemy";
            esprnor1 = sEnemyIdle1;
            esprmove1 = sEnemyMove1;
            esprattack1 = sEnemyAttack1;
            esprhurt1 = sEnemyHurt1;
            esprdie1 = sEnemyHurt1;
            eX1 = 322;
            eY1 = 195;
            
            ehp2 = 30;
            ename2 = "enemy";
            esprnor2 = sEnemyIdle1;
            esprmove2 = sEnemyMove1;
            esprattack2 = sEnemyAttack1;
            esprhurt2 = sEnemyHurt1;
            esprdie2 = sEnemyHurt1;
            eX2 = 322;
            eY2 = 99;
            break;
        
        case 3:
            ehp1 = 30;
            ename1 = "archer";
            esprnor1 = sArcherIdle;
            esprmove1 = sArcherWalk;
            esprattack1 = sArcherAttack;
            esprhurt1 = sArcherHurt;
            esprdie1 = sArcherHurt;
            eX1 = 370;
            eY1 = 147;
            break;
        
        case 4:
            ehp1 = 30;
            ename1 = "enemy";
            esprnor1 = sEnemyIdle1;
            esprmove1 = sEnemyMove1;
            esprattack1 = sEnemyAttack1;
            esprhurt1 = sEnemyHurt1;
            esprdie1 = sEnemyHurt1;
            eX1 = 322;
            eY1 = 195;
            
            ehp2 = 30;
            ename2 = "archer";
            esprnor2 = sArcherIdle;
            esprmove2 = sArcherWalk;
            esprattack2 = sArcherAttack;
            esprhurt2 = sArcherHurt;
            esprdie2 = sArcherHurt;
            eX2 = 322;
            eY2 = 99;
            break;
        
        case 5:
            ehp1 = 50;
            ename1 = "ballistaStraight";
            esprnor1 = sBalSNor;
            esprmove1 = sBalSNor;
            esprattack1 = sBalSAtk;
            esprhurt1 = sBalSNor;
            esprdie1 = sBalSNor;
            eX1 = 274;
            eY1 = 147;
            
            ehp2 = 40;
            ename2 = "enemy";
            esprnor2 = sEnemyIdle1;
            esprmove2 = sEnemyMove1;
            esprattack2 = sEnemyAttack1;
            esprhurt2 = sEnemyHurt1;
            esprdie2 = sEnemyHurt1;
            eX2 = 322;
            eY2 = 99;
            break;
        
        case 6:
            ehp1 = 50;
            ename1 = "ballistaDiag";
            esprnor1 = sBalDNor;
            esprmove1 = sBalDNor;
            esprattack1 = sBalDAtk;
            esprhurt1 = sBalDNor;
            esprdie1 = sBalDNor;
            eX1 = 274;
            eY1 = 99;
            
            ehp2 = 50;
            ename2 = "bomber";
            esprnor2 = sBomberIdle;
            esprmove2 = sBomberWalk;
            esprattack2 = sBomberWalk;
            esprhurt2 = sBomberHurt;
            esprdie2 = sBomberDie;
            eX2 = 274;
            eY2 = 195;
            
            ehp3 = 40;
            ename3 = "archer";
            esprnor3 = sArcherIdle;
            esprmove3 = sArcherWalk;
            esprattack3 = sArcherAttack;
            esprhurt3 = sArcherHurt;
            esprdie3 = sArcherHurt;
            eX3 = 370;
            eY3 = 147;
            break;
        
        case 7:
            ehp1 = 40;
            ename1 = "charger";
            esprnor1 = sChargerIdle;
            esprmove1 = sChargerWalk;
            esprattack1 = sChargerAttack;
            esprhurt1 = sChargerHurt;
            esprdie1 = sChargerHurt;
            eX1 = 274;
            eY1 = 147;
            
            ehp2 = 40;
            ename2 = "archer";
            esprnor2 = sArcherIdle;
            esprmove2 = sArcherWalk;
            esprattack2 = sArcherAttack;
            esprhurt2 = sArcherHurt;
            esprdie2 = sArcherHurt;
            eX2 = 322;
            eY2 = 99;
            
            ehp3 = 55;
            ename3 = "bomber";
            esprnor3 = sBomberIdle;
            esprmove3 = sBomberWalk;
            esprattack3 = sBomberWalk;
            esprhurt3 = sBomberHurt;
            esprdie3 = sBomberDie;
            eX3 = 274;
            eY3 = 99;
            break;
        
        case 8:
            ehp1 = 50;
            ename1 = "charger";
            esprnor1 = sChargerIdle;
            esprmove1 = sChargerWalk;
            esprattack1 = sChargerAttack;
            esprhurt1 = sChargerHurt;
            esprdie1 = sChargerHurt;
            eX1 = 274;
            eY1 = 147;
            
            ehp2 = 50;
            ename2 = "ballistaAll";
            esprnor2 = sBalANor;
            esprmove2 = sBalANor;
            esprattack2 = sBalAAtk;
            esprhurt2 = sBalANor;
            esprdie2 = sBalANor;
            eX2 = 322;
            eY2 = 99;
            
            ehp3 = 55;
            ename3 = "bomber";
            esprnor3 = sBomberIdle;
            esprmove3 = sBomberWalk;
            esprattack3 = sBomberWalk;
            esprhurt3 = sBomberHurt;
            esprdie3 = sBomberDie;
            eX3 = 274;
            eY3 = 99;
            break;
        
        case 9:
            ehp1 = 50;
            ename1 = "ballistaAll";
            esprnor1 = sBalANor;
            esprmove1 = sBalANor;
            esprattack1 = sBalAAtk;
            esprhurt1 = sBalANor;
            esprdie1 = sBalANor;
            eX1 = 274;
            eY1 = 147;
            
            ehp2 = 60;
            ename2 = "charger";
            esprnor2 = sChargerIdle;
            esprmove2 = sChargerWalk;
            esprattack2 = sChargerAttack;
            esprhurt2 = sChargerHurt;
            esprdie2 = sChargerHurt;
            eX2 = 370;
            eY2 = 99;
            
            ehp3 = 65;
            ename3 = "bomber";
            esprnor3 = sBomberIdle;
            esprmove3 = sBomberWalk;
            esprattack3 = sBomberWalk;
            esprhurt3 = sBomberHurt;
            esprdie3 = sBomberDie;
            eX3 = 274;
            eY3 = 99;
            break;
        
        case 10:
            ehp1 = 60;
            ename1 = "charger";
            esprnor1 = sChargerIdle;
            esprmove1 = sChargerWalk;
            esprattack1 = sChargerAttack;
            esprhurt1 = sChargerHurt;
            esprdie1 = sChargerHurt;
            eX1 = 370;
            eY1 = 99;
            
            ehp2 = 70;
            ename2 = "enemy";
            esprnor2 = sEnemyIdle1;
            esprmove2 = sEnemyMove1;
            esprattack2 = sEnemyAttack1;
            esprhurt2 = sEnemyHurt1;
            esprdie2 = sEnemyHurt1;
            eX2 = 322;
            eY2 = 195;
            
            ehp3 = 55;
            ename3 = "ballistaAll";
            esprnor3 = sBalANor;
            esprmove3 = sBalANor;
            esprattack3 = sBalAAtk;
            esprhurt3 = sBalANor;
            esprdie3 = sBalANor;
            eX3 = 274;
            eY3 = 147;
            break;
        
        case 11:
            ehp1 = 60;
            ename1 = "archer";
            esprnor1 = sArcherIdle;
            esprmove1 = sArcherWalk;
            esprattack1 = sArcherAttack;
            esprhurt1 = sArcherHurt;
            esprdie1 = sArcherHurt;
            eX1 = 370;
            eY1 = 99;
            
            ehp2 = 70;
            ename2 = "charger";
            esprnor2 = sChargerIdle;
            esprmove2 = sChargerWalk;
            esprattack2 = sChargerAttack;
            esprhurt2 = sChargerHurt;
            esprdie2 = sChargerHurt;
            eX2 = 322;
            eY2 = 195;
            
            ehp3 = 55;
            ename3 = "ballistaDiag";
            esprnor3 = sBalDNor;
            esprmove3 = sBalDNor;
            esprattack3 = sBalDAtk;
            esprhurt3 = sBalDNor;
            esprdie3 = sBalDNor;
            eX3 = 274;
            eY3 = 147;
            break;
        
        case 12:
            ehp1 = 70;
            ename1 = "enemy";
            esprnor1 = sEnemyIdle1;
            esprmove1 = sEnemyMove1;
            esprattack1 = sEnemyAttack1;
            esprhurt1 = sEnemyHurt1;
            esprdie1 = sEnemyHurt1;
            eX1 = 370;
            eY1 = 99;
            
            ehp2 = 70;
            ename2 = "bomber";
            esprnor2 = sBomberIdle;
            esprmove2 = sBomberWalk;
            esprattack2 = sBomberWalk;
            esprhurt2 = sBomberHurt;
            esprdie2 = sBomberDie;
            eX2 = 322;
            eY2 = 195;
            
            ehp3 = 70;
            ename3 = "charger";
            esprnor3 = sChargerIdle;
            esprmove3 = sChargerWalk;
            esprattack3 = sChargerAttack;
            esprhurt3 = sChargerHurt;
            esprdie3 = sChargerHurt;
            eX3 = 274;
            eY3 = 147;
            break;
        
        case 50:
        case 51:
            ehp1 = 0;
            ename1 = "enemy";
            esprnor1 = sEnemyIdle1;
            esprmove1 = sEnemyMove1;
            esprattack1 = sEnemyAttack1;
            esprhurt1 = sEnemyHurt1;
            esprdie1 = sEnemyHurt1;
            eX1 = 0;
            eY1 = 0;
            
            ehp2 = 0;
            ename2 = "enemy";
            esprnor2 = sEnemyIdle1;
            esprmove2 = sEnemyMove1;
            esprattack2 = sEnemyAttack1;
            esprhurt2 = sEnemyHurt1;
            esprdie2 = sEnemyHurt1;
            eX2 = 0;
            eY2 = 0;
            
            ehp3 = 0;
            ename3 = "enemy";
            esprnor3 = sEnemyIdle1;
            esprmove3 = sEnemyMove1;
            esprattack3 = sEnemyAttack1;
            esprhurt3 = sEnemyHurt1;
            esprdie3 = sEnemyHurt1;
            eX3 = 0;
            eY3 = 0; break;
            
        case 101:   //tutorial
            ehp1 = 30;
            ename1 = "enemy";
            esprnor1 = sEnemyIdle1;
            esprmove1 = sEnemyMove1;
            esprattack1 = sEnemyAttack1;
            esprhurt1 = sEnemyHurt1;
            esprdie1 = sEnemyHurt1;
            eX1 = 500;
            eY1 = 147; break;
        
        case 102:   //tutorial
            ehp1 = 30;
            ename1 = "enemy";
            esprnor1 = sEnemyIdle1;
            esprmove1 = sEnemyMove1;
            esprattack1 = sEnemyAttack1;
            esprhurt1 = sEnemyHurt1;
            esprdie1 = sEnemyHurt1;
            eX1 = 322;
            eY1 = 147; break;
        
        case 103:   //tutorial
            ehp1 = 30;
            ename1 = "enemy";
            esprnor1 = sEnemyIdle1;
            esprmove1 = sEnemyMove1;
            esprattack1 = sEnemyAttack1;
            esprhurt1 = sEnemyHurt1;
            esprdie1 = sEnemyHurt1;
            eX1 = 322;
            eY1 = 147; break;
        
        case 201:
            ehp1 = 120;
            ename1 = "unstop";
            esprnor1 = sUnstop;
            esprmove1 = sUnstop;
            esprattack1 = sUnstopAtk;
            esprhurt1 = sUnstopHurt;
            esprdie1 = sUnstopDie;
            eX1 = 226;
            eY1 = 99;
            
            ehp2 = 130;
            ename2 = "immove";
            esprnor2 = sImmove;
            esprmove2 = sImmove;
            esprattack2 = sImmoveAtk;
            esprhurt2 = sImmoveH;
            esprdie2 = sImmoveDie;
            eX2 = 322;
            eY2 = 147;
            
            ehp3 = 0;
            ename3 = "enemy";
            esprnor3 = sEnemy;
            esprmove3 = sEnemy;
            esprattack3 = sEnemy;
            esprhurt3 = sEnemy;
            esprdie3 = sEnemy;
            eX3 = 0;
            eY3 = 0; break;
        
        case 202:
            ehp1 = 130;
            ename1 = "energy";
            esprnor1 = sEnergyIdle;
            esprmove1 = sEnergyWalk;
            esprattack1 = sEnergyAttack;
            esprhurt1 = sEnergyHurt;
            esprdie1 = sEnergyDie;
            eX1 = 322;
            eY1 = 147;
            
            ehp2 = 1;
            ename2 = "machine";
            esprnor2 = sFan;
            esprmove2 = sFan;
            esprattack2 = sFan;
            esprhurt2 = sFan;
            esprdie2 = sFan;
            eX2 = 370;
            eY2 = 51;
            
            ehp3 = 1;
            ename3 = "machine";
            esprnor3 = sConductor;
            esprmove3 = sConductor;
            esprattack3 = sConductor;
            esprhurt3 = sConductor;
            esprdie3 = sConductor;
            eX3 = 370;
            eY3 = 243;
            break;
        
        case 203:
            ehp1 = 140;
            ename1 = "library";
            esprnor1 = sLibraryIdle;
            esprmove1 = sLibraryMove;
            esprattack1 = sLibraryAttack;
            esprhurt1 = sLibraryHurt;
            esprdie1 = sLibraryHurt;
            eX1 = 322;
            eY1 = 147; 
            
            ehp3 = 0;
            ename3 = "enemy";
            esprnor3 = sEnemy;
            esprmove3 = sEnemy;
            esprattack3 = sEnemy;
            esprhurt3 = sEnemy;
            esprdie3 = sEnemy;
            eX3 = 0;
            eY3 = 0;break;
        
        case 300:
            ehp1 = 17;
            ename1 = "inverse";
            esprnor1 = sFinalIdle;
            esprmove1 = sFinalWalk;
            esprattack1 = sFinalAttack;
            esprhurt1 = sFinalHurt;
            esprdie1 = sFinalDie;
            eX1 = 322;
            eY1 = 147;
            
            ehp2 = 0;
            ename2 = "enemy";
            esprnor2 = sEnemy;
            esprmove2 = sEnemy;
            esprattack2 = sEnemy;
            esprhurt2 = sEnemy;
            esprdie2 = sEnemy;
            eX2 = 0;
            eY2 = 0;
            
            ehp3 = 0;
            ename3 = "enemy";
            esprnor3 = sEnemy;
            esprmove3 = sEnemy;
            esprattack3 = sEnemy;
            esprhurt3 = sEnemy;
            esprdie3 = sEnemy;
            eX3 = 0;
            eY3 = 0; break;
    }

if(shouldGive && instance_exists(oBattleManager)){
    
    with(oBattleManager){
        ehp1 = other.ehp1;
        ename1 = other.ename1;
        esprnor1 = other.esprnor1;
        esprmove1 = other.esprmove1;
        esprattack1 = other.esprattack1;
        esprhurt1 = other.esprhurt1;
        esprdie1 = other.esprdie1;
        eX1 = other.eX1;
        eY1 = other.eY1;
        
        ehp2 = other.ehp2;
        ename2 = other.ename2;
        esprnor2 = other.esprnor2;
        esprmove2 = other.esprmove2;
        esprattack2 = other.esprattack2;
        esprhurt2 = other.esprhurt2;
        esprdie2 = other.esprdie2;
        eX2 = other.eX2;
        eY2 = other.eY2;
        
        ehp3 = other.ehp3;
        ename3 = other.ename3;
        esprnor3 = other.esprnor3;
        esprmove3 = other.esprmove3;
        esprattack3 = other.esprattack3;
        esprhurt3 = other.esprhurt3;
        esprdie3 = other.esprdie3;
        eX3 = other.eX3;
        eY3 = other.eY3;
    }
    shouldGive = false;
}