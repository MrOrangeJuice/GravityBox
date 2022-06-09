/// @description Init

global.score = 0;
global.highScore = 0;
global.coins = 0;
global.time = 0;
global.alive = false;
global.coinValue = 1;
global.prevCoinValue = 1;

global.mouse = true;
global.fullscreen = false;
global.fastStart = false;
global.controller = false;

// Mouse
global.mouseX = 0;
global.mouseY = 0;
global.mouseControllerSpeed = 5;

global.paused = false;

// Shop
global.currentShopSelection = 0;
global.playerSelection = 0;
global.shopPrices = [0, 20, 50, 50, 50, 50, 100, 150, 100, 150, 150, 200];
global.skinNames = ["Classic", "Perfect Blue", "Banana", "Grape", "Creamsicle", "Monochrome", "Super Citrus", "Fern", "Lil' Cupid", "DMGravity", "Player 2", "Opposite Day"];
global.shopOwnership = [true,false,false,false,false,false,false,false,false,false,false,false];
global.buyHover = false;

prevMousePosX = global.mouseX;
prevMousePosY = global.mouseY;

prevActualMousePosX = mouse_x;
prevActualMousePosY = mouse_y;

if(file_exists("savedata.ini")){
	Load();
}

// Set fullscreen if loaded in
if(global.fullscreen)
{
	window_set_fullscreen(true);	
}

randomize();

display_set_gui_size(480,270);
draw_set_font(fUI);
draw_set_color(c_white);
draw_set_halign(fa_center);
