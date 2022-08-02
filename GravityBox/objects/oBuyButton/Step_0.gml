key_select = 0;

if (position_meeting(global.mouseX,global.mouseY,oBuyButton) && global.mouse)
{
	if (gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(4,gp_face1))
	{
		key_select = 1;
		global.controller = 1;
	}
	
	global.buyHover = true;
    if(!soundPlayed)
	{
		audio_play_sound(snd_MenuMove,5,false);
		soundPlayed = true;
	}
    image_index = 1;
	if(mouse_check_button_pressed(mb_left) || key_select)
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
				// Check for achievement
				skinsOwned = 0;
				for(i = 0; i < array_length(global.shopOwnership); i++)
				{
					if(global.shopOwnership[i])
					{
						skinsOwned++;	
					}
				}
				if(skinsOwned >= 5)
				{
					global.shop5 = true;
					global.shopOwnership[16] = true;
				}
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
