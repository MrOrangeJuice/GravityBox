/// @description  Hover and Click

if (position_meeting(mouse_x,mouse_y,oOptionsButton))
{
    image_index = 1;
	if(mouse_check_button_pressed(mb_left))
	{
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
    image_index = 0;
}
