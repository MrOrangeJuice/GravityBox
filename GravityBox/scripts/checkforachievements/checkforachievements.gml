// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckForAchievements(){
	achievementQueue = [false,false,false,false,false,false];
	// Check for achievements
	if(global.highScore >= 300 && !global.points300)
	{
		global.points300 = true;	
		global.shopOwnership[15] = true;
		achievementQueue[0] = true;
		/*
		if (!steam_get_achievement("BoxLord"))
		{
			steam_set_achievement("BoxLord");
		}
		*/
    }

	if(global.highScore >= 200 && !global.points200)
	{
		global.points200 = true;	
		global.shopOwnership[14] = true;
		achievementQueue[1] = true;
		/*
		if (!steam_get_achievement("Gerald"))
		{
			steam_set_achievement("Gerald");
		}
		*/
	}
	if(global.highScore >= 100 && !global.points100)
	{
		global.points100 = true;	
		global.shopOwnership[13] = true;
		achievementQueue[2] = true;
		/*
		if (!steam_get_achievement("DogDays"))
		{
			steam_set_achievement("DogDays");
		}
		*/
	}
	if(global.highScore >= 50 && !global.points50)
	{
		global.points50 = true;	
		global.shopOwnership[12] = true;
		achievementQueue[3] = true;
		/*
		if (!steam_get_achievement("Groovy"))
		{
			steam_set_achievement("Groovy");
		}
		*/
	}
	// Check for shop achievement
	skinsOwned = 0;
	for(i = 0; i < 12; i++)
	{
		if(global.shopOwnership[i])
		{
			skinsOwned++;	
		}
	}
	if(skinsOwned >= 6 && !global.shop5)
	{
		global.shop5 = true;
		global.shopOwnership[16] = true;
		achievementQueue[4] = true;
		/*
		if (!steam_get_achievement("BoxBot23"))
		{
			steam_set_achievement("BoxBot23");
		}
		*/
	}
	// Check for mystery achievement
	if(global.clickCount >= 10)
	{
		if(!global.mysteryAchievement)
		{
			global.mysteryAchievement = true;
			global.shopOwnership[17] = true;
			achievementQueue[5] = true;
			/*
			if (!steam_get_achievement("MrMystery"))
			{
				steam_set_achievement("MrMystery");
			}
			*/
		}
		audio_play_sound(snd_Pop,5,false);
		audio_play_sound(snd_Yay,5,false);
		global.clickCount = 0;
	}
	
	// Spawn acheivement notifications
	numberSpawned = 0;
	for(i = 0; i < array_length(achievementQueue); i++)
	{
		if(achievementQueue[i])
		{
			newNotification = instance_create_layer(0,0,"Cursor",oAcheivement);
			newNotification.achievementNo = i;
			newNotification.yOffset = 80 * numberSpawned;
			numberSpawned++;
		}
	}
}