/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_right)) {
	vx = 3;
	
	if (vy == 0) {
		facing = "right";
		sprite_index = spr_td_right_walk;
	}
}
else if (keyboard_check(vk_left)) {
	vx = -3;
	
	if (vy == 0) {
		facing = "left";
		sprite_index = spr_td_left_walk;
	}
}
else {
	vx = 0;
}

if (keyboard_check(vk_down)) {
	vy = 3;
	
	if (vx == 0) {
		facing = "down";
		sprite_index = spr_td_down_walk;
	}
}
else if (keyboard_check(vk_up)) {
	vy = -3;
	
	if (vx == 0) {
		facing = "up";
		sprite_index = spr_td_up_walk;
	}
}
else {
	vy = 0;
}

if (vx == 0 && vy == 0) {
	switch(facing) {
		case "right": sprite_index = spr_td_right_idle; break;
		case "left": sprite_index = spr_td_left_idle; break;
		case "down": sprite_index = spr_td_down_idle; break;
		case "up": sprite_index = spr_td_up_idle; break;
	}
}

x += vx;
y += vy;