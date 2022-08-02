/// @description Set alive to false

global.alive = false;

// Select death message
messages = ["You Died!", "You Croaked!", "You Perished!", "You Met Your Demise!", "You Kicked the Bucket!", "You Got Got!", "You Done Goofed!", "Oof!", "Better Luck Next Time!"];

messageIndex = random_range(0,array_length(messages));

// Create UI
instance_create_layer(208,144,"UI",oRetryButton);
instance_create_layer(128,144,"UI",oShopButton);
instance_create_layer(288,144,"UI",oHomeButton);

// Check for achievements
if(global.highScore >= 300)
{
	global.points300 = true;	
	global.shopOwnership[15] = true;
}
if(global.highScore >= 200)
{
	global.points200 = true;	
	global.shopOwnership[14] = true;
}
if(global.highScore >= 100)
{
	global.points100 = true;	
	global.shopOwnership[13] = true;
}
if(global.highScore >= 50)
{
	global.points50 = true;	
	global.shopOwnership[12] = true;
}

// Save
Save();
