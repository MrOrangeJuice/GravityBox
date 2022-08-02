// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckForAchievements(){
	// Check for achievements
	if(global.highScore >= 300 && !global.points300)
	{
		global.points300 = true;	
		global.shopOwnership[15] = true;
	}
	if(global.highScore >= 200 && !global.points200)
	{
		global.points200 = true;	
		global.shopOwnership[14] = true;
	}
	if(global.highScore >= 100 && !global.points100)
	{
		global.points100 = true;	
		global.shopOwnership[13] = true;
	}
	if(global.highScore >= 50 && !global.points50)
	{
		global.points50 = true;	
		global.shopOwnership[12] = true;
	}
	// Check for achievement
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
	}
}