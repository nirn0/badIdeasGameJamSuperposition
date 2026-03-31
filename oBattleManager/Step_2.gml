if(!hasSetUp){
    oEnemyBattle1.x = eX1;
    oEnemyBattle1.y = eY1;
    oEnemyBattle1.hp = ehp1;
    oEnemyBattle1.hpMax = ehp1;
    oEnemyBattle1.name = ename1;
    oEnemyBattle1.sprnor = esprnor1;
    oEnemyBattle1.sprmove = esprmove1;
    oEnemyBattle1.sprattack = esprattack1;
    oEnemyBattle1.sprhurt = esprhurt1;
    oEnemyBattle1.sprdie = esprdie1;
    
    oEnemyBattle2.x = eX2;
    oEnemyBattle2.y = eY2;
    oEnemyBattle2.hp = ehp2;
    oEnemyBattle2.hpMax = ehp2;
    oEnemyBattle2.name = ename2;
    oEnemyBattle2.sprnor = esprnor2;
    oEnemyBattle2.sprmove = esprmove2;
    oEnemyBattle2.sprattack = esprattack2;
    oEnemyBattle2.sprhurt = esprhurt2; 
    oEnemyBattle2.sprdie = esprdie2;
    
    oEnemyBattle3.x = eX3;
    oEnemyBattle3.y = eY3;
    oEnemyBattle3.hp = ehp3;
    oEnemyBattle3.hpMax = ehp3;
    oEnemyBattle3.name = ename3;
    oEnemyBattle3.sprnor = esprnor3;
    oEnemyBattle3.sprmove = esprmove3;
    oEnemyBattle3.sprattack = esprattack3;
    oEnemyBattle3.sprhurt = esprhurt3; 
    oEnemyBattle3.sprdie = esprdie3;
    
    if(eX1 == 0) oEnemyBattle1.x = 500;
    if(eX2 == 0) oEnemyBattle2.x = 500;
    if(eX3 == 0) oEnemyBattle3.x = 500;
    
    if(instance_exists(oEncounterCarrier) && (oEncounterCarrier.num == 51)){
        instance_create_layer(230,50,"Instances",oHealer);
        oPlayerBattle.x = 250;
        oPlayerBattle.y = 150;
        oPlayerBattle.xTo = 250;
        oPlayerBattle.yTo = 150;
        with(oSpace) visible = false;
    }
    
    if(instance_exists(oEncounterCarrier) && (oEncounterCarrier.num == 50)){
        instance_create_layer(230,50,"Instances",oMerchant);
        oPlayerBattle.x = 250;
        oPlayerBattle.y = 150;
        oPlayerBattle.xTo = 250;
        oPlayerBattle.yTo = 150;
        with(oSpace) visible = false;
    }
    
    oEnemyBattle1.sprite_index = oEnemyBattle1.sprnor;
    oEnemyBattle2.sprite_index = oEnemyBattle2.sprnor;
    oEnemyBattle3.sprite_index = oEnemyBattle3.sprnor;
    
    hasSetUp = true;
}