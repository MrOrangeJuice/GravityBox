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
	global.shopOwnership[6] = ini_read_real("savegame", "shopOwnership6", 0);
	global.shopOwnership[7] = ini_read_real("savegame", "shopOwnership7", 0);
	global.shopOwnership[8] = ini_read_real("savegame", "shopOwnership8", 0);
	global.shopOwnership[9] = ini_read_real("savegame", "shopOwnership9", 0);
	global.shopOwnership[10] = ini_read_real("savegame", "shopOwnership10", 0);
	global.shopOwnership[11] = ini_read_real("savegame", "shopOwnership11", 0);
	ini_close();
}
