with(oEncounter9) if(floor(point_distance(x,y,other.x,other.y)) < 140){
    draw_line_width(x,y,other.x,other.y,3);
}
draw_self();