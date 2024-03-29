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

global.music = true;

// Achievements
global.points50 = false;
global.points100 = false;
global.points200 = false;
global.points300 = false;
global.shop5 = false;
global.mysteryAchievement = false;

// Mouse
global.mouseX = 0;
global.mouseY = 0;
global.mouseControllerSpeed = 5;

global.paused = false;

global.easterScore = 0;

// Title Easter Egg
global.clickCount = 0;

// Shop
global.currentShopSelection = 0;
global.playerSelection = 0;
global.shopPrices = [0, 20, 50, 50, 50, 50, 100, 150, 100, 150, 150, 200, 100000, 100000, 100000, 100000, 100000, 100000];
global.skinNames = ["Classic", "Perfect Blue", "Banana", "Grape", "Creamsicle", "Grayscale", "Super Citrus", "Fern", "Lil' Cupid", "DMGravity", "Player 2", "Opposite Day", "Groovy", "Dog Days", "Gerald", "Box Lord", "BoxBot 2.3", "Mr. Mystery"];
global.shopOwnership = [true,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false,false];
global.buyHover = false;

prevMousePosX = global.mouseX;
prevMousePosY = global.mouseY;

prevActualMousePosX = mouse_x;
prevActualMousePosY = mouse_y;

if(file_exists("savedata.ini")){
	Load();
}
else
{
	Save();	
}

// Check for achievement in case of existing save file
CheckForAchievements();

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
