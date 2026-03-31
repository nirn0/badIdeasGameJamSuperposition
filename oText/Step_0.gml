lerpProgress += (1 - lerpProgress) / 50;
textProgress += global.xtextSpeed;

//End message
if(keyboard_check_pressed(vk_space) or keyboard_check_pressed(ord("E"))){
    var messageLength = string_length(message);
    if(textProgress >= messageLength){
        instance_destroy();
        if(instance_exists(oTextQueued)){
            with(oTextQueued) ticket--;
        }
    } 
    else{
    	if(textProgress > 2){
            textProgress = messageLength;
        }
    }
}