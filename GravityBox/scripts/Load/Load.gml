function Load(){
	ini_open("savedata.ini");
	global.highScore = ini_read_real("savegame", "highScore", 0);
	global.coins = ini_read_real("savegame", "coins", 0);
	global.fullscreen = ini_read_real("savegame", "fullscreen", 0);
	global.fastStart = ini_read_real("savegame", "fastStart", 0);
	global.currentShopSelection = ini_read_real("savegame", "currentShopSelection", 0);
	global.playerSelection = ini_read_real("savegame", "playerSelection", 0);
	global.shopOwnership[0] = ini_read_real("savegame", "shopOwnership0", 0);
	global.shopOwnership[1] = ini_read_real("savegame", "shopOwnership1", 0);
	global.shopOwnership[2] = ini_read_real("savegame", "shopOwnership2", 0);
	global.shopOwnership[3] = ini_read_real("savegame", "shopOwnership3", 0);
	global.shopOwnership[4] = ini_read_real("savegame", "shopOwnership4", 0);
	global.shopOwnership[5] = ini_read_real("savegame", "shopOwnership5", 0);
	ini_close();
}
