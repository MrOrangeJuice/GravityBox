/// @description Click

audio_play_sound(snd_MenuSelect,5,false);
if(file_exists("savedata.ini")){
	file_delete("savedata.ini");
}	
global.highScore = 0;
global.coins = 0;
global.currentShopSelection = 0;
global.playerSelection = 0;
global.shopOwnership = [true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false];
// Achievements
global.points50 = false;
global.points100 = false;
global.points200 = false;
global.points300 = false;
global.shop5 = false;
global.mysteryAchievement = false;
Save();
