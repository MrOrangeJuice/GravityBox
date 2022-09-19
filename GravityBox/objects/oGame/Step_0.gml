/// @description Increment Time

steam_update();

key_left = 0;
key_right = 0;
key_down = 0;
key_up = 0;
global.keyControllerSelect = 0;
global.keyControllerBack = 0;

// Get controller for mouse
if (gamepad_axis_value(0,gp_axislh) < -0.4 || gamepad_button_check(0,gp_padl) || gamepad_axis_value(4,gp_axislh) < -0.4 || gamepad_button_check(4,gp_padl))
{
	key_left = 1;
	global.controller = 1;
}

if (gamepad_axis_value(0,gp_axislh) > 0.4 || gamepad_button_check(0,gp_padr) || gamepad_axis_value(4,gp_axislh) > 0.4 || gamepad_button_check(4,gp_padr))
{
	key_right = 1;
	global.controller = 1;
}

if (gamepad_axis_value(0,gp_axislv) > 0.4 || gamepad_button_check(0,gp_padd) || gamepad_axis_value(4,gp_axislv) > 0.4 || gamepad_button_check(4,gp_padd))
{
	key_down = 1;
	global.controller = 1;
}

if (gamepad_axis_value(0,gp_axislv) < -0.4 || gamepad_button_check(0,gp_padu) || gamepad_axis_value(0,gp_axislv) < -0.4 || gamepad_button_check(4,gp_padu))
{
	key_up = 1;
	global.controller = 1;
}

if (gamepad_button_check_pressed(0,gp_face1) || gamepad_button_check_pressed(4,gp_face1))
{
	global.keyControllerSelect = 1;
	global.controller = 1;
}

if (gamepad_button_check_pressed(0,gp_face2) || gamepad_button_check_pressed(4,gp_face2))
{
	global.keyControllerBack = 1;
	global.controller = 1;
}

if(room == rGame)
{
	if(global.alive) global.time++;

	// Increment score every second
	if(global.time % 60 == 0 && global.alive)
	{
		global.score++;	
	}

	// Increment high score if overtaken by score
	if(global.score > global.highScore)
	{
		global.highScore = global.score;	
	}	
}

// Turn mouse and controller off if player inputs something on keyboard
if(keyboard_check(vk_anykey))
{
	global.mouse = false;
	global.controller = false;
}

// Turn mouse off if screen is touched
if(device_mouse_check_button(0, mb_left))
{
	global.mouse = false;	
}

if(prevMousePosX != global.mouseX || prevMousePosY != global.mouseY)
{
	//global.mouse = true;
}

if(prevActualMousePosX != mouse_x || prevActualMousePosY != mouse_y)
{
	global.controller = false;
}

prevMousePosX = global.mouseX;
prevMousePosY = global.mouseY;

prevActualMousePosX = mouse_x;
prevActualMousePosY = mouse_y;

// Determine new mouse coords
if(global.controller = 0)
{
	global.mouseX = mouse_x;
	global.mouseY = mouse_y;
}
else
{
	if(!global.alive)
	{
		global.mouseX += (key_right - key_left) * global.mouseControllerSpeed;
		global.mouseY += (key_down - key_up) * global.mouseControllerSpeed;
		// Keep in bounds
		if(global.mouseX < 0)
		{
			global.mouseX = 0;
		}
		if(global.mouseX > display_get_gui_width())
		{
			global.mouseX = display_get_gui_width();	
		}
	
		if(global.mouseY < 0)
		{
			global.mouseY = 0;
		}
		if(global.mouseY > display_get_gui_height())
		{
			global.mouseY = display_get_gui_height();	
		}
	}
}

// Go back if player presses B
if(room == rShop || (room == rGame && !global.alive))
{
	if(global.keyControllerBack)
	{
		room = rTitle;	
	}
}

// Check for easter egg
if(global.easterScore == 0)
{
	if(keyboard_check_pressed(ord("L"))) global.easterScore = 1;
}

if(global.easterScore == 1)
{
	if(keyboard_check_pressed(ord("B"))) global.easterScore = 2;
}

if(global.easterScore == 2)
{
	if(keyboard_check_pressed(ord("G"))) global.easterScore = 3;
}
if(global.easterScore == 3)
{
	audio_play_sound(snd_MenuSelect,5,false);
	room_goto(rEasterEgg);
}


