if(opt2 == opt1) opt2++;
if(opt3 == opt1 or opt2) opt3++;

if(!created && !instance_exists(oText)){
    switch (typeLoot){     // 1 = weapons  2 = charms  3 = items
    	case 1:
            instance_create_layer(110,135,"Instances",oLootMerchOpt1);
            instance_create_layer(240,135,"Instances",oLootMerchOpt1);
            instance_create_layer(370,135,"Instances",oLootMerchOpt1); break;
        case 2:
            instance_create_layer(110,135,"Instances",oLootMerchOpt2);
            instance_create_layer(240,135,"Instances",oLootMerchOpt2);
            instance_create_layer(370,135,"Instances",oLootMerchOpt2); break;
        case 3:
            instance_create_layer(110,135,"Instances",oLootMerchOpt3);
            instance_create_layer(240,135,"Instances",oLootMerchOpt3);
            instance_create_layer(370,135,"Instances",oLootMerchOpt3); break;
    }
    created = true;
}