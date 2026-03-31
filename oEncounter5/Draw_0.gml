with(oEncounter6) if(floor(point_distance(x,y,other.x,other.y)) < 160){
    draw_line_width(x,y,other.x,other.y,3);
}
draw_self();