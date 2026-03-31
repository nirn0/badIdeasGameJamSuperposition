if (global.gamePaused)
{
    var keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
    var keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
    pauseOptionSelected += (keyDown - keyUp);
    if (pauseOptionSelected >= array_length(pauseOption)) pauseOptionSelected = 0;
    if (pauseOptionSelected < 0) pauseOptionSelected = array_length(pauseOption) -1; 
	
	var keyActivate = keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("E"));
	if (keyActivate)
	{
		switch (pauseOptionSelected)
		{
			case 0: //Continue
			{
				global.gamePaused = false;
			} break;
			
			case 1: //Save
			{
				SaveGame();
			} break;
			
			case 2: //Save and quit
			{
                with (oGame) instance_destroy();
				SaveGame();
				game_restart();	
			} break;
		}
	}
}