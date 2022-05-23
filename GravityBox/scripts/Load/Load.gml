function Load(){
	ini_open("savedata.ini");
	global.highScore = ini_read_real("savegame", "highScore", 0);
	global.coins = ini_read_real("savegame", "coins", 0);
	global.fullscreen = ini_read_real("savegame", "fullscreen", 0);
	global.fastStart = ini_read_real("savegame", "fastStart", 0);
	ini_close();
}
