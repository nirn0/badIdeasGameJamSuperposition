if(oScientist.sprite_index == sScienPutCatInBox && oScientist.image_index > oScientist.image_number-1) sprite_index = sBoxClosing;

if(sprite_index == sBoxClosing && image_index > image_number-1) sprite_index = sBoxClosed;

if(oScientist.sprite_index == sScienPutCatInBox) image_alpha = 0;
else image_alpha = 1;