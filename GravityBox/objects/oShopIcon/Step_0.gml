/// @description Hover and Click
if (global.currentShopSelection == selectionNum)
{
	image_index = 2;
}
else if (position_meeting(mouse_x,mouse_y,id) && global.mouse)
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
		global.currentShopSelection = selectionNum;
		SpawnShopPlayer();
	}
}
else
{
	soundPlayed = false;
    image_index = 0;
}
