with(oEncounter2) if(floor(point_distance(x,y,other.x,other.y)) < 130){
    draw_line_width(x,y,other.x,other.y,3);
}
draw_self();