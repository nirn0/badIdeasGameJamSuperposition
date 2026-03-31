if(room == rmTitle or room == rmBase or room == rmOutro or room == rmEnd) global.currentMusic = snBG;
else global.currentMusic = snBG2;
if(global.currentMusic == snBG) audio_stop_sound(snBG2);
else audio_stop_sound(snBG);