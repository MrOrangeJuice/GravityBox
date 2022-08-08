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
	}
	if(global.highScore >= 200 && !global.points200)
	{
		global.points200 = true;	
		global.shopOwnership[14] = true;
		achievementQueue[1] = true;
	}
	if(global.highScore >= 100 && !global.points100)
	{
		global.points100 = true;	
		global.shopOwnership[13] = true;
		achievementQueue[2] = true;
	}
	if(global.highScore >= 50 && !global.points50)
	{
		global.points50 = true;	
		global.shopOwnership[12] = true;
		achievementQueue[3] = true;
	}
	// Check for shop achievement
	skinsOwned = 0;
	for(i = 0; i < array_length(global.shopOwnership); i++)
	{
		if(global.shopOwnership[i])
		{
			skinsOwned++;	
		}
	}
	if(skinsOwned >= 5 && !global.shop5)
	{
		global.shop5 = true;
		global.shopOwnership[16] = true;
		achievementQueue[4] = true;
	}
	// Check for mystery achievement
	if(global.clickCount >= 10)
	{
		if(!global.mysteryAchievement)
		{
			global.mysteryAchievement = true;
			global.shopOwnership[17] = true;
			achievementQueue[5] = true;
		}
		audio_play_sound(snd_Pop,5,false);
		audio_play_sound(snd_Yay,5,false);
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