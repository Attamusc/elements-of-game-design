/// @description Insert description here
// You can write your code in this editor

num_keys = 0;

rock_melter_acquired = false;

if (!audio_is_playing(snd_ducktales_moon)) {
	audio_play_sound(snd_ducktales_moon, 10, 1);
}