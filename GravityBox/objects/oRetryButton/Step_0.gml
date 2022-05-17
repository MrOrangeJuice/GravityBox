/// @description  Hover and Click

if (position_meeting(mouse_x,mouse_y,oRetryButton))
{
    image_index = 1;
	if(mouse_check_button_pressed(mb_left))
	{
		Restart();
	}
}
else
{
    image_index = 0;
}
