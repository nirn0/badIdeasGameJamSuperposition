level = oEncounterCarrier.level;
typeLoot = floor(random_range(1,3.99));
opt1 = 0;
opt2 = 0;
opt3 = 0;

switch (level){
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

created = false;

NewTextBox("Take any treasure you like...");