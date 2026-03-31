if(global.tutorial != 0 && !instance_exists(oText)){
    if(point_distance(oParadoxPlace.x, oParadoxPlace.y, 128, 192) > 4) with(oParadoxPlace) move_towards_point(128,192,2);
    else{
        oParadoxPlace.x = 128;
        oParadoxPlace.y = 192;
        oParadoxPlace.speed = 0;
        global.tutorial = 0;
    }
}