/// @description Init

global.score = 0;
global.highScore = 0;
display_set_gui_size(480,270);
draw_set_font(fUI);
draw_set_color(c_white);
draw_set_halign(fa_center);

// Spawn first coin
instance_create_layer(random_range(112,368),random_range(16,254),"Coins",oCoin);