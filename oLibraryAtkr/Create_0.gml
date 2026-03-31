enemy = choose("enemy","archer","bomber");

if(oEnemyBattle2.hp > 0) instance_destroy();

if(!instance_place(322,147,oEnemyBattle1) && !instance_place(322,147,oPlayerBattle)){
    x = 322;
    y = 147;
}
else if(!instance_place(274,99,oEnemyBattle1) && !instance_place(322,147,oPlayerBattle)){
    x = 274;
    y = 99;
}
else{
    x = 226;
    y = 195;
}