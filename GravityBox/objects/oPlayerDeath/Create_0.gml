/// @description Set alive to false

global.alive = false;

// Select death message
messages = ["You Died!", "You Croaked!", "You Perished!", "You Met Your Demise!", "You Kicked the Bucket!", "You Got Got!", "You Done Goofed!"];

messageIndex = random_range(0,array_length(messages));
