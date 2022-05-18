/// @description Init

global.score = 0;
global.highScore = 0;
global.coins = 0;
global.time = 0;
global.alive = true;

global.mouse = true;
prevMousePosX = mouse_x;
prevMousePosY = mouse_y;
display_set_gui_size(480,270);
draw_set_font(fUI);
draw_set_color(c_white);
draw_set_halign(fa_center);
