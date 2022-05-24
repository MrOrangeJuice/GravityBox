/// @description Init

global.score = 0;
global.highScore = 0;
global.coins = 0;
global.time = 0;
global.alive = true;

global.mouse = true;
global.fullscreen = false;
global.fastStart = false;

// Shop
global.currentShopSelection = 0;
global.playerSelection = 0;
global.shopPrices = [0, 20, 50, 50, 50, 50];
global.shopOwnership = [true,false,false,false,false,false];
global.buyHover = false;

prevMousePosX = mouse_x;
prevMousePosY = mouse_y;

if(file_exists("savedata.ini")){
	Load();
}

// Set fullscreen if loaded in
if(global.fullscreen)
{
	window_set_fullscreen(true);	
}

display_set_gui_size(480,270);
draw_set_font(fUI);
draw_set_color(c_white);
draw_set_halign(fa_center);
