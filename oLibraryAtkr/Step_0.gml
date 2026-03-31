if(image_index > image_number-1){
    with (oEnemyBattle2) {
    	switch (other.enemy){
        	case "enemy":
                    hp = 60;
                    hpMax = 60;
                    name = "enemy";
                    sprnor = sEnemyIdle1;
                    sprmove = sEnemyMove1;
                    sprattack = sEnemyAttack1;
                    sprhurt = sEnemyHurt1;
                    sprdie = sEnemyHurt1; break;
        	case "archer":
                    hp = 60;
                    hpMax = 60;
                    name = "archer";
                    sprnor = sArcherIdle;
                    sprmove = sArcherWalk;
                    sprattack = sArcherAttack;
                    sprhurt = sArcherHurt;
                    sprdie = sArcherHurt; break;
        	case "bomber":
                    hp = 60;
                    hpMax = 60;
                    name = "bomber";
                    sprnor = sBomberIdle;
                    sprmove = sBomberWalk;
                    sprattack = sBomberIdle;
                    sprhurt = sBomberHurt;
                    sprdie = sBomberDie; break;
        }
        x = other.x;
        y = other.y;
        oEnemyBattle2.die = false;
        oEnemyBattle2.image_alpha = 1;
    }
    with (oBattleManager) {
            ehp2 = oEnemyBattle2.hp;
            ename2 = oEnemyBattle2.name;
            esprnor2 = oEnemyBattle2.sprnor;
            esprmove2 = oEnemyBattle2.sprmove;
            esprattack2 = oEnemyBattle2.sprattack;
            esprhurt2 = oEnemyBattle2.sprhurt;
            esprdie2 = oEnemyBattle2.sprdie;
            eX2 = oEnemyBattle2.x;
            eY2 = oEnemyBattle2.y;
    }
    instance_destroy()
}