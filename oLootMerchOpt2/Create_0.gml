num = 0;
sprite_index = sCharmOptions;
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

selected = false;
timer = -1;
set = false;
selectable = true;

image_xscale = 0.9;
image_yscale = 0.9;
depth = -800