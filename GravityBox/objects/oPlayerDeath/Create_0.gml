/// @description Set alive to false

global.alive = false;

// Select death message
messages = ["You Died!", "You Croaked!", "You Perished!", "You Met Your Demise!", "You Kicked the Bucket!", "You Got Got!", "You Done Goofed!", "Oof!", "Better Luck Next Time!"];

messageIndex = random_range(0,array_length(messages));

// Create UI
instance_create_layer(208,120,"UI",oRetryButton);
instance_create_layer(128,120,"UI",oShopButton);
instance_create_layer(288,120,"UI",oHomeButton);

CheckForAchievements();

// Save
Save();
