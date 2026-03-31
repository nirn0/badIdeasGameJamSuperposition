with(oPlayerPath) if(floor(point_distance(x,y,other.x,other.y)) < 100 && y > other.y) other.available = true;
else available = false;

timer--;

if(floor(timer) == 0){
    if(!instance_exists(oFade)){
        var fader = instance_create_depth(x,y,-999,oFade);
        fader.targetRoom = rmBattle;
    }
}