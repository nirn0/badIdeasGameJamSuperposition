num = 0;
sprite_index = sWeaponOptions;
if(room == rmBattle){
    switch (x) {
    	case 110:
            image_index = oMerchant.opt1-1;
            num = oMerchant.opt1; break;
        case 240:
            image_index = oMerchant.opt2-1;
            num = oMerchant.opt2; break;
        case 370:
            image_index = oMerchant.opt3-1;
            num = oMerchant.opt3; break;
    }
}
else{
    switch (x) {
    	case 110:
            image_index = oPathController.ranItem;
            num = image_index+1; break;
        case 240:
            image_index = oPathController.ranItem+1;
            num = image_index+1 break;
        case 370:
            image_index = oPathController.ranItem+2;
            num = image_index+1; break;
    }
}

selected = false;
timer = -1;
set = false;
selectable = true;

image_xscale = 0.9;
image_yscale = 0.9;
depth = -800