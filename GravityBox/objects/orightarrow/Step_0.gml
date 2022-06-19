/// @description Determine correct sprite

if(global.grav == "right")
{
	image_index = 1;	
}
else
{
	image_index = 0;	
}

if(position_meeting(mouse_x,mouse_y,oRightArrow) && device_mouse_check_button_pressed(0,mb_left))
{
	global.grav = "right";
}