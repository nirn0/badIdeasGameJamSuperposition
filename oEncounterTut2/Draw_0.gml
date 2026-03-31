with(oEncounterTut3) if(floor(point_distance(x,y,other.x,other.y)) < 150){
    draw_line_width(x,y,other.x,other.y,3);
}
draw_self();