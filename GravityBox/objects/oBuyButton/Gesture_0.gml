/// @description Click

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