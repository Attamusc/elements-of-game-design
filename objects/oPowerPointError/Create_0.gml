/// @description Insert description here
// You can write your code in this editor

image_blend = make_color_hsv(random(255), 255, 255);

image_xscale = random_range(0.25, 2.5);
image_yscale = image_xscale;

image_angle = irandom_range(-65, 65);

audio_play_sound(snd_windows_bonk, 10, 0);