/// @description Draw Buy Text

draw_set_color(c_black);

// Draw Number of Gems
draw_text(56,194,"Gems:");
draw_text(56,210,global.coins);

// Draw skin name
draw_text(400,32,global.skinNames[global.currentShopSelection]);

// Draw Price
if(!global.shopOwnership[global.currentShopSelection])
{
	if(!global.buyHover)
	{
		if(global.currentShopSelection <= 11)
		{
			draw_text(400,194,"BUY");
			draw_text(400,210,global.shopPrices[global.currentShopSelection]);
		}
		else
		{
			buttonText = "";
			switch(global.currentShopSelection)
			{
				case 12:
					buttonText = "SCORE 50";
					break;
				case 13:
					buttonText = "SCORE 100";
					break;
				case 14:
					buttonText = "SCORE 200";
					break;
				case 15:
					buttonText = "SCORE 300";
					break;
				case 16:
					buttonText = "OWN";
					break;
				case 17:
					buttonText = "???";
					break;
			}	
			if(global.currentShopSelection == 16)
			{
				draw_text(400,189,buttonText);
				draw_text(400,205,"5 SKINS");
				draw_text(400,221,"TO UNLOCK");
			}
			else
			{
				draw_text(400,194,buttonText);
				draw_text(400,210,"TO UNLOCK");
			}
		}
	}
	else
	{
		if(global.currentShopSelection <= 11)
		{
			draw_text(400,197,"BUY");
			draw_text(400,213,global.shopPrices[global.currentShopSelection]);
		}
		else
		{
			buttonText = "";
			switch(global.currentShopSelection)
			{
				case 12:
					buttonText = "SCORE 50";
					break;
				case 13:
					buttonText = "SCORE 100";
					break;
				case 14:
					buttonText = "SCORE 200";
					break;
				case 15:
					buttonText = "SCORE 300";
					break;
				case 16:
					buttonText = "OWN";
					break;
				case 17:
					buttonText = "???";
					break;
			}	
			if(global.currentShopSelection == 16)
			{
				draw_text(400,192,buttonText);
				draw_text(400,208,"5 SKINS");
				draw_text(400,224,"TO UNLOCK");
			}
			else
			{
				draw_text(400,197,buttonText);
				draw_text(400,213,"TO UNLOCK");
			}
		}
	}
}
