/// @description  Hover and Click

key_select = 0;

if (position_meeting(global.mouseX,global.mouseY,oMusicButton) && global.mouse)
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
		if(global.music)
		{
			global.music = false;
			audio_stop_sound(msc_Shop);
			audio_stop_sound(msc_Pattlebaddle);
			audio_stop_sound(msc_Title);
		}
		else if(!global.music)
		{
			global.music = true;
			if(global.music) audio_play_sound(msc_Shop,5,true);
		}
		Save();
	}
}
else
{
	soundPlayed = false;
    image_index = 0;
}

if(global.music)
{
	sprite_index = sMusicOnButton;	
}
else
{
	sprite_index = sMusicOffButton;	
}

