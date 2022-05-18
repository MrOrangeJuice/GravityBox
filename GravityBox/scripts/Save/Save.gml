function Save(){
	ini_open("savedata.ini");
	ini_write_real("savegame", "highScore", global.highScore);
	ini_write_real("savegame", "coins", global.coins);
	ini_close();
}
