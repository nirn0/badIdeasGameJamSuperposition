function PlayerCollision(){
    var collision = false;
    var entityList = ds_list_create();
    
    if(place_meeting(x + xSpeed, y, oCollider)){
        xSpeed = 0
    }
    
    x += xSpeed;

    ds_list_clear(entityList);
    
    if(place_meeting(x, y + ySpeed, oCollider)){
        ySpeed = 0
    }
    
    y += ySpeed;

    ds_list_destroy(entityList);
    return collision;
}