function PlayerStateFree(){
    var distanceToGo = point_distance(x,y,xTo,yTo);
    if(distanceToGo > speedWalk){
        move_towards_point(xTo,yTo,speedWalk)
        sprite_index = spriteRun;
    }
    else{
        x = xTo;
        y = yTo;
        speed = 0;
        if(sprite_index == spriteRun) sprite_index = spriteIdle;
    }
}