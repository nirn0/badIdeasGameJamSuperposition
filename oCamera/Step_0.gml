//update camera position
if(instance_exists(follow)){
    x = follow.x;
    y = follow.y;
    detected ++;
}
else{
    detected = 1;
    /*dir = point_direction(x,y,xTo,yTo);
    if(x != xTo) x += lengthdir_x(spd, dir);
    if(y != yTo) y += lengthdir_y(spd, dir);
    if(xTo-x > -spd && xTo-x < spd) x = xTo;
    if(yTo-y > -spd && yTo-y < spd) y = yTo;*/
}

//keep camera center inside room
x = clamp(x, viewWidthHalf, room_width - viewWidthHalf);
y = clamp(y, viewHeightHalf, room_height - viewHeightHalf);

//screen shake
x += random_range(-shakeRemain, shakeRemain);
y += random_range(-shakeRemain, shakeRemain);

shakeRemain = max(0, shakeRemain - ((1/shakeLength) * shakeMagnitude));

camera_set_view_pos(cam, x - viewWidthHalf, y - viewHeightHalf);