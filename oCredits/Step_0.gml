timer--;
if(timer < 0) opacity = min(opacity+0.01,1);
if(timer < -550 && !instance_exists(oFade)){
    SaveGame();
    var fader = instance_create_depth(x,y,-999,oFade);
    fader.targetRoom = rmTitle;
}