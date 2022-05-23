/// @description  Hover and Click

if (position_meeting(mouse_x,mouse_y,oFastStartButton) && global.mouse)
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
		if(global.fastStart)
		{
			global.fastStart = false;
		}
		else if(!global.fastStart)
		{
			global.fastStart = true;
		}
		Save();
	}
}
else
{
	soundPlayed = false;
    image_index = 0;
}

if(global.fastStart)
{
	sprite_index = sFastStartOnButton;	
}
else
{
	sprite_index = sFastStartOffButton;	
}
