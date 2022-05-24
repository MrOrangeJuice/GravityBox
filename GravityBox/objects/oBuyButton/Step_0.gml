if (position_meeting(mouse_x,mouse_y,oBuyButton) && global.mouse)
{
	global.buyHover = true;
    if(!soundPlayed)
	{
		audio_play_sound(snd_MenuMove,5,false);
		soundPlayed = true;
	}
    image_index = 1;
	if(mouse_check_button_pressed(mb_left))
	{
		
	}
}
else
{
	global.buyHover = false;
	soundPlayed = false;
    image_index = 0;
}

// Change sprite
if(global.shopPrices[global.currentShopSelection] > global.coins)
{
	sprite_index = sBuyButtonPoor;	
}
else
{
	sprite_index = sBuyButton;
}
