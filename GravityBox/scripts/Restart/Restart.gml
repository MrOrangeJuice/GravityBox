function Restart(){

	global.score = 0;
	global.coins = 0;
	global.time = 0;
	global.alive = true;
	
	// Destroy entites
	instance_destroy(oEnemy);
	instance_destroy(oCoin);
	
	// Destroy UI
	instance_destroy(oPlayerDeath);
	instance_destroy(oRetryButton);
	instance_destroy(oShopButton);
	instance_destroy(oHomeButton);
	
	// Spawn entities
	instance_create_layer(240,144,"Instances",oPlayer);
	
	instance_create_layer(160,64,"Instances",oEnemy);
	instance_create_layer(320,64,"Instances",oEnemy);
	instance_create_layer(160,208,"Instances",oEnemy);
	instance_create_layer(320,208,"Instances",oEnemy);
	
	// Spawn first coin
	instance_create_layer(random_range(112,368),random_range(16,254),"Coins",oCoin);
}