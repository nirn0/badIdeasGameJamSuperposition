if(image_index > image_number-1){
    oHealer.timer = 120;
    global.hp = global.hpMax;
    audio_play_sound(snClick, 1, false, 1, 0, 2.5, 1);
    audio_play_sound(snClick, 1, false, 1, 0, 1, 1);
    audio_play_sound(snHurt, 1, false, 1, 0, 2, 1);
    instance_destroy();
}