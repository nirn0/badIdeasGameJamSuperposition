y1 = 867;
y2 = 783;
y3 = 687;
y4 = 591;
y5 = 510;
y6 = 432;
y7 = 342;
y8 = 260;
y9 = 161;

ranItem = floor(random_range(0,3.99));

if(global.tutorial == 0){
    row1 = floor(random_range(2,4));
    row2 = floor(random_range(3,6));
    row3 = floor(random_range(3,7));
    row4 = floor(random_range(4,7));
    row5 = floor(random_range(4,7));
    row6 = floor(random_range(4,6));//4,7
    row7 = floor(random_range(3,4));//4,7
    row8 = floor(random_range(4,6));//4,6
    row9 = floor(random_range(3,4));
    
    switch (row1) {
        case 2:
            instance_create_layer(160,y1,"Instances",oEncounter1);
            instance_create_layer(288,y1,"Instances",oEncounter1); break;
    	case 3:
            instance_create_layer(150,y1,"Instances",oEncounter1);
            instance_create_layer(225,y1,"Instances",oEncounter1);
            instance_create_layer(300,y1,"Instances",oEncounter1); break;
    }
    
    switch (row2) {
    	case 3:
            instance_create_layer(150,y2,"Instances",oEncounter2);
            instance_create_layer(225,y2,"Instances",oEncounter2);
            instance_create_layer(300,y2,"Instances",oEncounter2); break;
        case 4:
            instance_create_layer(90,y2,"Instances",oEncounter2);
            instance_create_layer(180,y2,"Instances",oEncounter2);
            instance_create_layer(270,y2,"Instances",oEncounter2);
            instance_create_layer(360,y2,"Instances",oEncounter2); break;
        case 5:
            instance_create_layer(65,y2,"Instances",oEncounter2);
            instance_create_layer(123,y2,"Instances",oEncounter2);
            instance_create_layer(224,y2,"Instances",oEncounter2);
            instance_create_layer(325,y2,"Instances",oEncounter2);
            instance_create_layer(398,y2,"Instances",oEncounter2); break;
    }
    
    switch (row3) {
    	case 3:
            instance_create_layer(150,y3,"Instances",oEncounter3);
            instance_create_layer(225,y3,"Instances",oEncounter3);
            instance_create_layer(300,y3,"Instances",oEncounter3); break;
        case 4:
            instance_create_layer(90,y3,"Instances",oEncounter3);
            instance_create_layer(180,y3,"Instances",oEncounter3);
            instance_create_layer(270,y3,"Instances",oEncounter3);
            instance_create_layer(360,y3,"Instances",oEncounter3); break;
        case 5:
            instance_create_layer(65,y3,"Instances",oEncounter3);
            instance_create_layer(123,y3,"Instances",oEncounter3);
            instance_create_layer(224,y3,"Instances",oEncounter3);
            instance_create_layer(325,y3,"Instances",oEncounter3);
            instance_create_layer(398,y3,"Instances",oEncounter3); break;
        case 6:
            instance_create_layer(30,y3,"Instances",oEncounter3);
            instance_create_layer(116,y3,"Instances",oEncounter3);
            instance_create_layer(202,y3,"Instances",oEncounter3);
            instance_create_layer(282,y3,"Instances",oEncounter3);
            instance_create_layer(368,y3,"Instances",oEncounter3);
            instance_create_layer(455,y3,"Instances",oEncounter3); break;
    }
    
    switch (row4) {
        case 4:
            instance_create_layer(90,y4,"Instances",oEncounter4);
            instance_create_layer(180,y4,"Instances",oEncounter4);
            instance_create_layer(270,y4,"Instances",oEncounter4);
            instance_create_layer(360,y4,"Instances",oEncounter4); break;
        case 5:
            instance_create_layer(65,y4,"Instances",oEncounter4);
            instance_create_layer(123,y4,"Instances",oEncounter4);
            instance_create_layer(224,y4,"Instances",oEncounter4);
            instance_create_layer(325,y4,"Instances",oEncounter4);
            instance_create_layer(398,y4,"Instances",oEncounter4); break;
        case 6:
            instance_create_layer(30,y4,"Instances",oEncounter4);
            instance_create_layer(116,y4,"Instances",oEncounter4);
            instance_create_layer(202,y4,"Instances",oEncounter4);
            instance_create_layer(278,y4,"Instances",oEncounter4);
            instance_create_layer(364,y4,"Instances",oEncounter4);
            instance_create_layer(450,y4,"Instances",oEncounter4); break;
    }
    
    switch (row5) {
        case 4:
            instance_create_layer(90,y5,"Instances",oEncounter5);
            instance_create_layer(180,y5,"Instances",oEncounter5);
            instance_create_layer(270,y5,"Instances",oEncounter5);
            instance_create_layer(360,y5,"Instances",oEncounter5); break;
        case 5:
            instance_create_layer(65,y5,"Instances",oEncounter5);
            instance_create_layer(123,y5,"Instances",oEncounter5);
            instance_create_layer(224,y5,"Instances",oEncounter5);
            instance_create_layer(325,y5,"Instances",oEncounter5);
            instance_create_layer(398,y5,"Instances",oEncounter5); break;
        case 6:
            instance_create_layer(30,y5,"Instances",oEncounter5);
            instance_create_layer(116,y5,"Instances",oEncounter5);
            instance_create_layer(202,y5,"Instances",oEncounter5);
            instance_create_layer(278,y5,"Instances",oEncounter5);
            instance_create_layer(364,y5,"Instances",oEncounter5);
            instance_create_layer(450,y5,"Instances",oEncounter5); break;
    }
    
    switch (row6) {
        case 4:
            instance_create_layer(90,y6,"Instances",oEncounter6);
            instance_create_layer(180,y6,"Instances",oEncounter6);
            instance_create_layer(270,y6,"Instances",oEncounter6);
            instance_create_layer(360,y6,"Instances",oEncounter6); break;
        case 5:
            instance_create_layer(70,y6,"Instances",oEncounter6);
            instance_create_layer(123,y6,"Instances",oEncounter6);
            instance_create_layer(230,y6,"Instances",oEncounter6);
            instance_create_layer(335,y6,"Instances",oEncounter6);
            instance_create_layer(410,y6,"Instances",oEncounter6); break;
        case 6:
            instance_create_layer(30,y6,"Instances",oEncounter6);
            instance_create_layer(116,y6,"Instances",oEncounter6);
            instance_create_layer(202,y6,"Instances",oEncounter6);
            instance_create_layer(278,y6,"Instances",oEncounter6);
            instance_create_layer(364,y6,"Instances",oEncounter6);
            instance_create_layer(450,y6,"Instances",oEncounter6); break;
    }
    
    switch (row7) {
        case 4:
            instance_create_layer(90,y7,"Instances",oEncounter7);
            instance_create_layer(180,y7,"Instances",oEncounter7);
            instance_create_layer(270,y7,"Instances",oEncounter7);
            instance_create_layer(360,y7,"Instances",oEncounter7); break;
        case 5:
            instance_create_layer(65,y7,"Instances",oEncounter7);
            instance_create_layer(123,y7,"Instances",oEncounter7);
            instance_create_layer(224,y7,"Instances",oEncounter7);
            instance_create_layer(325,y7,"Instances",oEncounter7);
            instance_create_layer(398,y7,"Instances",oEncounter7); break;
        case 6:
            instance_create_layer(30,y7,"Instances",oEncounter7);
            instance_create_layer(116,y7,"Instances",oEncounter7);
            instance_create_layer(202,y7,"Instances",oEncounter7);
            instance_create_layer(282,y7,"Instances",oEncounter7);
            instance_create_layer(368,y7,"Instances",oEncounter7);
            instance_create_layer(435,y7,"Instances",oEncounter7); break;
    }
    
    instance_create_layer(225,y7,"Instances",oEncounterBoss);
    
    global.tutorialBase = false;
    
    /*switch (row8) {
        case 4:
            instance_create_layer(90,y8,"Instances",oEncounter8);
            instance_create_layer(180,y8,"Instances",oEncounter8);
            instance_create_layer(270,y8,"Instances",oEncounter8);
            instance_create_layer(360,y8,"Instances",oEncounter8); break;
        case 5:
            instance_create_layer(65,y8,"Instances",oEncounter8);
            instance_create_layer(123,y8,"Instances",oEncounter8);
            instance_create_layer(224,y8,"Instances",oEncounter8);
            instance_create_layer(325,y8,"Instances",oEncounter8);
            instance_create_layer(398,y8,"Instances",oEncounter8); break;
    }
    
    switch (row9) {
    	case 3:
            instance_create_layer(150,y9,"Instances",oEncounter9);
            instance_create_layer(225,y9,"Instances",oEncounter9);
            instance_create_layer(300,y9,"Instances",oEncounter9); break;
        case 4:
            instance_create_layer(90,y9,"Instances",oEncounter9);
            instance_create_layer(180,y9,"Instances",oEncounter9);
            instance_create_layer(270,y9,"Instances",oEncounter9);
            instance_create_layer(360,y9,"Instances",oEncounter9); break;
    }*/
}

else{
    instance_create_layer(200,y1,"Instances",oEncounterTut1);
    instance_create_layer(200,y2,"Instances",oEncounterTut2);
    instance_create_layer(200,y3,"Instances",oEncounterTut3);
}

hasGivenStartingWeapon = false;
hasGivenStartingItem = false;