function Save(){
	ini_open("savedata.ini");
	ini_write_real("savegame", "highScore", global.highScore);
	ini_write_real("savegame", "coins", global.coins);
	ini_write_real("savegame", "fullscreen", global.fullscreen);
	ini_write_real("savegame", "fastStart", global.fastStart);
	ini_write_real("savegame", "music", global.music);
	ini_write_real("savegame", "currentShopSelection", global.currentShopSelection);
	ini_write_real("savegame", "playerSelection", global.playerSelection);
	ini_write_real("savegame", "shopOwnership0", global.shopOwnership[0]);
	ini_write_real("savegame", "shopOwnership1", global.shopOwnership[1]);
	ini_write_real("savegame", "shopOwnership2", global.shopOwnership[2]);
	ini_write_real("savegame", "shopOwnership3", global.shopOwnership[3]);
	ini_write_real("savegame", "shopOwnership4", global.shopOwnership[4]);
	ini_write_real("savegame", "shopOwnership5", global.shopOwnership[5]);
	ini_write_real("savegame", "shopOwnership6", global.shopOwnership[6]);
	ini_write_real("savegame", "shopOwnership7", global.shopOwnership[7]);
	ini_write_real("savegame", "shopOwnership8", global.shopOwnership[8]);
	ini_write_real("savegame", "shopOwnership9", global.shopOwnership[9]);
	ini_write_real("savegame", "shopOwnership10", global.shopOwnership[10]);
	ini_write_real("savegame", "shopOwnership11", global.shopOwnership[11]);
	ini_write_real("savegame", "shopOwnership12", global.shopOwnership[12]);
	ini_write_real("savegame", "shopOwnership13", global.shopOwnership[13]);
	ini_write_real("savegame", "shopOwnership14", global.shopOwnership[14]);
	ini_write_real("savegame", "shopOwnership15", global.shopOwnership[15]);
	ini_write_real("savegame", "shopOwnership16", global.shopOwnership[16]);
	ini_write_real("savegame", "shopOwnership17", global.shopOwnership[17]);
	ini_close();
}
