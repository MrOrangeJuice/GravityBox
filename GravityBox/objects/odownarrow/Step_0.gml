/// @description Determine correct sprite

if(my_touch == -1)
{
	for(var i = 0; i < 10; i++)
	{
		if(device_mouse_check_button_pressed(i,mb_any))
		{
			if(position_meeting(device_mouse_x(i),device_mouse_y(i),id))
			{
				my_touch = i;
				image_index = 1;
				global.grav = "down";
			}
		}
	}
}
else
{
	if(device_mouse_check_button_released(my_touch,mb_any))
	{
		my_touch = -1;
		image_index = 0;
	}
}