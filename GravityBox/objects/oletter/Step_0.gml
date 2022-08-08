/// @description Click and Move

if(click)
{
	vsp += grv;
	y += vsp;
}

key_select = 0;

if(!click)
{
	if (position_meeting(global.mouseX,global.mouseY,id) && global.mouse)
	{
		if (gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(4,gp_face1))
		{
			key_select = 1;
			global.controller = 1;
		}
		if(mouse_check_button_pressed(mb_left) || key_select)
		{
			click = true;
			audio_play_sound(snd_Letter,5,false);
			vsp = -4;
			alarm[0] = room_speed * 2;
		}
	}
}