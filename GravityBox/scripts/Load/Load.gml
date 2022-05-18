function Load(){
	ini_open("savedata.ini");
	global.highScore = ini_read_real("savegame", "highScore", 0);
	ini_close();
}
