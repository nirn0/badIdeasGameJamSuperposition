if(!hasCreated && type != 0 && !instance_exists(oLootManager)){
    switch (type) {
    	case 1:
            instance_create_layer(120,130,"Instances",oReplace1);
            instance_create_layer(360,130,"Instances",oReplace2);
            instance_create_layer(240,230,"Instances",oReplaceBack); break;
        case 2:
            instance_create_layer(120,85,"Instances",oReplace1);
            instance_create_layer(240,85,"Instances",oReplace2);
            instance_create_layer(360,85,"Instances",oReplace3);
            instance_create_layer(340,180,"Instances",oReplaceBack); break;
        case 3:
            instance_create_layer(100,100,"Instances",oReplace1);
            instance_create_layer(100,175,"Instances",oReplace2);
            instance_create_layer(100,250,"Instances",oReplace3);
            instance_create_layer(300,100,"Instances",oReplace4);
            instance_create_layer(300,175,"Instances",oReplace5);
            instance_create_layer(300,250,"Instances",oReplace6);
            instance_create_layer(200,250,"Instances",oReplaceBack); break;
    }
    hasCreated = true;
}