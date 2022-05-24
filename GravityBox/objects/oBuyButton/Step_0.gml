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
		// If skin is owned
		if(global.shopOwnership[global.currentShopSelection])
		{
			// Equip
			if(global.currentShopSelection != global.playerSelection)
			{
				global.playerSelection = global.currentShopSelection;
				audio_play_sound(snd_MenuSelect,5,false);
			}
			else
			{
				audio_play_sound(snd_MenuSelect,5,false);
			}
			Save();
		}
		else
		{
			// Buy skin if able
			if(global.shopPrices[global.currentShopSelection] <= global.coins)
			{
				global.shopOwnership[global.currentShopSelection] = true;	
				global.coins -= global.shopPrices[global.currentShopSelection];
				audio_play_sound(snd_Buy,5,false);
			}
			else
			{
				audio_play_sound(snd_Reject,5,false);
			}
			Save();
		}
	}
}
else
{
	global.buyHover = false;
	soundPlayed = false;
    image_index = 0;
}

// Change sprite

// If skin is owned
if(global.shopOwnership[global.currentShopSelection])
{
	// If skin is equipped
	if(global.currentShopSelection == global.playerSelection)
	{
		sprite_index = sEquippedButton;
	}
	else
	{
		sprite_index = sEquipButton;	
	}
}
else
{
	if(global.shopPrices[global.currentShopSelection] > global.coins)
	{
		sprite_index = sBuyButtonPoor;	
	}
	else
	{
		sprite_index = sBuyButton;
	}	
}
