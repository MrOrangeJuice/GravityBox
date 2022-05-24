/// @description Draw Buy Text

draw_set_color(c_black);

// Draw Number of Coins
draw_text(56,194,"Coins:");
draw_text(56,210,global.coins);

// Draw Price
if(!global.shopOwnership[global.currentShopSelection])
{
	if(!global.buyHover)
	{
		draw_text(400,194,"BUY");
		draw_text(400,210,global.shopPrices[global.currentShopSelection]);
	}
	else
	{
		draw_text(400,197,"BUY");
		draw_text(400,213,global.shopPrices[global.currentShopSelection]);
	}
}
