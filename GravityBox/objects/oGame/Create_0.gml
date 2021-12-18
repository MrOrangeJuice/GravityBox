/// @description Init

global.score = 0;
display_set_gui_size(480,270);

// Spawn first coin
instance_create_layer(random_range(16,464),random_range(16,254),"Coins",oCoin);