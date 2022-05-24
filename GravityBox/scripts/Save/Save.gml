function Save(){
	ini_open("savedata.ini");
	ini_write_real("savegame", "highScore", global.highScore);
	ini_write_real("savegame", "coins", global.coins);
	ini_write_real("savegame", "fullscreen", global.fullscreen);
	ini_write_real("savegame", "fastStart", global.fastStart);
	ini_write_real("savegame", "currentShopSelection", global.currentShopSelection);
	ini_write_real("savegame", "playerSelection", global.playerSelection);
	ini_write_real("savegame", "shopOwnership0", global.shopOwnership[0]);
	ini_write_real("savegame", "shopOwnership1", global.shopOwnership[1]);
	ini_write_real("savegame", "shopOwnership2", global.shopOwnership[2]);
	ini_write_real("savegame", "shopOwnership3", global.shopOwnership[3]);
	ini_write_real("savegame", "shopOwnership4", global.shopOwnership[4]);
	ini_write_real("savegame", "shopOwnership5", global.shopOwnership[5]);
	ini_close();
}
