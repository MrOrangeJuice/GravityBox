/// @description  Hover and Click

if (position_meeting(mouse_x,mouse_y,oFullscreenButton) && global.mouse)
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
		if(global.fullscreen)
		{
			window_set_fullscreen(false);	
			global.fullscreen = false;
		}
		else if(!global.fullscreen)
		{
			window_set_fullscreen(true);	
			global.fullscreen = true;
		}
		Save();
	}
}
else
{
	soundPlayed = false;
    image_index = 0;
}

if(global.fullscreen)
{
	sprite_index = sFullscreenOnButton;	
}
else
{
	sprite_index = sFullscreenOffButton;	
}
