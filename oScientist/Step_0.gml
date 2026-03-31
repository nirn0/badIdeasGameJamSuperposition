timer--;
if(!movedToBox){
    if(!instance_exists(oText) && timer < -5) timer = 10;
    if(timer == 0){
        sprite_index = sScienWalkHold;
        movedToBox = true;
        move_towards_point(334,115,1);
    }
}
distanceToPoint1 = point_distance(x,y,334,115);
distanceToPoint2 = point_distance(x,y,250,122);
if(!atBox){
    if(distanceToPoint1 < 4){
        x = 334;
        y = 115;
        speed = 0;
        NewTextBox("I'm now placing this cat in the box.",sScientistFace);
        sprite_index = sScienTalkHold;
        atBox = true;
    }
}
if(distanceToPoint1 < 4 && sprite_index == sScienTalkHold && !instance_exists(oText)) sprite_index = sScienPutCatInBox;
if(sprite_index == sScienPutCatInBox && image_index > image_number-1){
    sprite_index = sScienWalk;
    move_towards_point(250,122,1);
}
if(!atSpeechPlace){
    if(atBox && distanceToPoint2 < 4){
        x = 250;
        y = 122;
        speed = 0;
        NewTextBox("Inside that box is a poisonous gas contained within a mechanism which, if a single\nisolated atom decays, will be released, killing the cat. Those of us here have no\nway of knowing whether the cat is currently alive or dead.",sScientistFace);
        NewTextBox("Blah blah blah blah",sScientistFace);
        NewTextBox("Blah blah",sScientistFace);
        sprite_index = sScienTalk;
        atSpeechPlace = true;
    }
}