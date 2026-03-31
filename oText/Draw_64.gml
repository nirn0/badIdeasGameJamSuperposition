//draw textbox
NineSliceBoxStretched(sTextBox,x1,y1,x2,y2);
draw_set_font(Font1);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_black);
var print = string_copy(message,1,textProgress);

if(variable_instance_exists(id,"portraitID")) draw_sprite_ext(portraitID, 0, x1+20, y1+20, 5, 5, 0, c_white, 1);
draw_set_color(c_white);
draw_text(260, y1+30, print);