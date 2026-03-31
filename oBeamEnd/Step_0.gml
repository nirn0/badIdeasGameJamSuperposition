if(yDraw < -100){
    if(y < 160) y += 5;
    else if(sprite_index != sBeamEnd) sprite_index = sBeamEnd;
    else if(image_index > image_number-1){
        instance_create_layer(x,y,"Instances",oPlayerEnd);
        instance_create_layer(x,y,"Instances",oCredits);
        instance_destroy();
    }
}
audio_play_sound(snClick, 1, false, 1, 0, 4, 1);
audio_play_sound(snClick, 1, false, 1, 0, 2, 1);
yDraw -= 2;
frame++;