if(floor(parent.image_index >= 7)){
    parent.x = parent.xTo;
    parent.y = parent.yTo;
    parent.hasMoved = true;
    parent.timerAttack = parent.timerMax;
    parent.shouldStartMoving = false;
    instance_destroy();
}