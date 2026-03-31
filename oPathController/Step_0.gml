if(global.tutorial == 0){
    if(!hasGivenStartingWeapon){
        instance_create_layer(110,850,"Instances",oLootMerchOpt1);
        instance_create_layer(240,850,"Instances",oLootMerchOpt1);
        instance_create_layer(370,850,"Instances",oLootMerchOpt1);
        hasGivenStartingWeapon = true;
    }
    
    if(!hasGivenStartingItem && hasGivenStartingWeapon && !instance_exists(oLootMerchOpt1)){
        instance_create_layer(110,850,"Instances",oLootMerchOpt3);
        instance_create_layer(240,850,"Instances",oLootMerchOpt3);
        instance_create_layer(370,850,"Instances",oLootMerchOpt3);
        hasGivenStartingItem = true;
    }
}