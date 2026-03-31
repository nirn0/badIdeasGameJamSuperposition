//pause the game
if(keyboard_check_pressed(vk_escape) && global.tutorial == 0 && room != rmTitle && room != rmOutro && room != rmEnd && room != rmIntro){
    global.gamePaused = !global.gamePaused;
}
if(keyboard_check_pressed(vk_f4)) window_set_fullscreen(!window_get_fullscreen());

if(room == rmPath){
    if(!instance_exists(oEncounterCarrier)){
        room_persistent = false;
        room_restart();
    }
    else room_persistent = true;
}
else if(room != rmBattle){
    room_persistent = false;
    if(instance_exists(oEncounterCarrier)) instance_destroy(oEncounterCarrier);
    global.hp = global.hpMax;
    global.weapon1 = 0;
    global.weapon2 = 0;
    global.charm1 = 0;
    global.charm2 = 0;
    global.charm3 = 0;
    global.item1 = 0;
    global.item2 = 0;
    global.item3 = 0;
    global.item4 = 0;
    global.item5 = 0;
    global.item6 = 0;
}