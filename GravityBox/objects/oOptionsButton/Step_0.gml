/// @description  Hover and Click

if (position_meeting(mouse_x,mouse_y,oOptionsButton))
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
		if(!window_get_fullscreen()) 
		{
			window_set_fullscreen(true);
		}
		else if(window_get_fullscreen())
		{
			window_set_fullscreen(false);
		}
	}
}
else
{
	soundPlayed = false;
    image_index = 0;
}
