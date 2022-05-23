/// @description  Hover and Click

if (position_meeting(mouse_x,mouse_y,oDeleteSaveButton) && global.mouse)
{
	if(!soundPlayed)
	{
		audio_play_sound(snd_MenuMove,5,false);
		soundPlayed = true;
	}
    image_index = 1;
	if(mouse_check_button_pressed(mb_left))
	{
		audio_play_sound(snd_MenuSelect,5,false);
		if(file_exists("savedata.ini")){
			file_delete("savedata.ini");
		}	
		global.highScore = 0;
		global.coins = 0;
		Save();
	}
}
else
{
	soundPlayed = false;
    image_index = 0;
}
