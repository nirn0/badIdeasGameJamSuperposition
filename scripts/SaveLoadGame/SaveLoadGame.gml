//SAVE
function SaveGame(){
    //create save map
    var map = ds_map_create();
    
    map[? "expeditionsComplete"] = global.paradoxesUnlocked;
    map[? "currentParadox"] = global.paradoxEquipped;
    
    //save all this to a string
    var _string = json_encode(map);
    SaveStringToFile("saveFile.sav", _string);
    show_debug_message(_string);
    
    //nuke the data
    ds_map_destroy(map);
    show_debug_message("game saved");
}

function SaveStringToFile(fileName, string){
    var buffer = buffer_create(string_byte_length(string)+1, buffer_fixed, 1);
    buffer_write(buffer, buffer_string, string);
    buffer_save(buffer, fileName);
    buffer_delete(buffer);
}

//LOAD
function LoadGame(slot){
    var file = "saveFile.sav";
    if(file_exists(file)){
        //load the game data
        var _json = LoadJsonFromFile(file);
        
        room_goto(rmBase);
        
        global.paradoxEquipped = _json[? "currentParadox"];
        for(var i = 0; i < array_length(global.paradoxesUnlocked); i++){
            global.paradoxesUnlocked[i] = _json[? "expeditionsComplete"][| i];
        }
        
        ds_map_destroy(_json);
        return true
    }
}
    
function LoadJsonFromFile(fileName){
    var buffer = buffer_load(fileName);
    var _string = buffer_read(buffer, buffer_string)
    buffer_delete(buffer);
    var _json = json_decode(_string);
    return _json; 
}