function NewTextBox(text="", portrait=noone){ // arg 1 = text  arg 2 = portrait
    var obj;
    if(instance_exists(oText)) obj = oTextQueued; 
    else obj = oText;
    with(instance_create_layer(0,0,"Instances",obj)){
        message = text;
        if(instance_exists(other)) originInstance = other.id;
        else originInstance = noone;
        
        if(argument_count > 1 && portrait != noone && portrait != 0){
            portraitID = portrait;
        }
    }
}

function NineSliceBoxStretched(){
    var size = sprite_get_width(argument0) / 3;
    var x1 = argument1;
    var y1 = argument2;
    var x2 = argument3;
    var y2 = argument4;
    var w = x2 - x1;
    var h = y2 - y1;
    
    //MIDDLE
    draw_sprite_part_ext(argument0, 0, size, size, 1, 1, x1+size, y1+size, w-(size*2), h-(size*2), c_white, draw_get_alpha());
    
    //CORNERS
    //top left
    draw_sprite_part(argument0, 0, 0, 0, size, size, x1, y1);
    //top right
    draw_sprite_part(argument0, 0, size*2, 0, size, size, x1+w-size, y1);
    //bottom left
    draw_sprite_part(argument0, 0, 0, size*2, size, size, x1, y1+h-size);
    //bottom right
    draw_sprite_part(argument0, 0, size*2, size*2, size, size, x1+w-size, y1+h-size);
    
    //EDGES
    //left edge
    draw_sprite_part_ext(argument0, 0, 0, size, size, 1, x1, y1+size, 1, h-(size*2), c_white, draw_get_alpha());
    //right edge
    draw_sprite_part_ext(argument0, 0, size*2, size, size, 1, x1+w-size, y1+size, 1, h-(size*2), c_white, draw_get_alpha());
    //top edge
    draw_sprite_part_ext(argument0, 0, size, 0, 1, size, x1+size, y1, w-(size*2), 1, c_white, draw_get_alpha());
    //bottom edge
    draw_sprite_part_ext(argument0, 0, size, size*2, 1, size, x1+size, y1+h-(size), w-(size*2), 1, c_white, draw_get_alpha());
}