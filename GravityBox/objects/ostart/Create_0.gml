/// @description Pause game

global.paused = true;
alarm[0] = room_speed * 0.3;
alarm[1] = room_speed * 0.6;
alarm[2] = room_speed * 0.9;
alarm[3] = room_speed * 1.2;
drawText = "3";
audio_play_sound(snd_CountDown,5,false);