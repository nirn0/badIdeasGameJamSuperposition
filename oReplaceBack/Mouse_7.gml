if(!instance_exists(oFade)){ 
    var fader = instance_create_depth(x,y,-999,oFade);
    fader.targetRoom = rmPath;
}
audio_play_sound(snClick, 1, false, 1, 0, 2, 1);