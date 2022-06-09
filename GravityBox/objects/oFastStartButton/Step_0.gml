/// @description  Hover and Click

key_select = 0;

if (position_meeting(global.mouseX,global.mouseY,oFastStartButton) && global.mouse)
{
	if (gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(4,gp_face1))
	{
		key_select = 1;
		global.controller = 1;
	}
	
	if(!soundPlayed)
	{
		audio_play_sound(snd_MenuMove,5,false);
		soundPlayed = true;
	}
    image_index = 1;
	if(mouse_check_button_pressed(mb_left) || key_select)
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
