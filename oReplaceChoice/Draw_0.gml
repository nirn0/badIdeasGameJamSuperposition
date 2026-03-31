switch (type){
    case 1:
        draw_sprite_ext(sWeaponOptions,global.pendingLoot-1,240,130,0.8,0.8,0,c_white,1);
        draw_sprite_ext(sReplaceWhich,0,240,50,0.8,0.8,0,c_white,1); break;
    case 2:
	    draw_sprite_ext(sCharmOptions,global.pendingLoot-1,190,210,0.8,0.8,0,c_white,1);
        draw_sprite_ext(sReplaceWhich,0,340 ,230,0.8,0.8,0,c_white,1); break;
    case 3:
        draw_sprite_ext(sItemOptions,global.pendingLoot-1,200,150,0.8,0.8,0,c_white,1);
        draw_sprite_ext(sReplaceWhich,0,200,40,0.8,0.8,0,c_white,1); break;
}