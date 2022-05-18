function Load(){
	ini_open("savedata.ini");
	global.highScore = ini_read_real("savegame", "highScore", 0);
	global.coins = ini_read_real("savegame", "coins", 0);
	ini_close();
}
