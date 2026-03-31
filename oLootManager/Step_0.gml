if(opt1 == noone){
    switch (oEncounterCarrier.level){
        case 1:
        case 2:
            opt1 = floor(random_range(1,5.99));
            opt2 = floor(random_range(1,9.99));
            opt3 = floor(random_range(1,9.99)); break;
        case 3:
        case 4:
            opt1 = floor(random_range(6,10.99));
            opt2 = floor(random_range(1,9.99));
            opt3 = floor(random_range(1,9.99)); break;
        case 5:
        case 6:
        case 7:
            opt1 = floor(random_range(11,17.99));
            opt2 = floor(random_range(1,9.99));
            opt3 = floor(random_range(1,9.99)); break;
        case 8:
        case 9:
            opt1 = floor(random_range(18,25));
            opt2 = floor(random_range(18,25));
            opt3 = floor(random_range(18,25)); break;
    }
    
    if(opt2 == opt1) opt2++;
    if(opt3 == opt1 or opt3 == opt2) opt3++;
    
    if(room == rmBattle){
        instance_create_layer(110,135,"Instances",oLootOpt1);
        instance_create_layer(240,135,"Instances",oLootOpt2);
        instance_create_layer(370,135,"Instances",oLootOpt3);
    }
    else if(room == rmPath){
        instance_create_layer(110,135,"Instances",oLootOpt1);
        instance_create_layer(240,135,"Instances",oLootOpt2);
        instance_create_layer(370,135,"Instances",oLootOpt3);
    }
}