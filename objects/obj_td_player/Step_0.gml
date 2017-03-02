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

repeat(abs(vx)) {
	if (!place_meeting(x + sign(vx), y, obj_solid_parent)) {
		x += sign(vx);
	}
	else {
		vx = 0;
		break;
	}
}

repeat(abs(vy)) {
	if (!place_meeting(x, y + sign(vy), obj_solid_parent)) {
		y += sign(vy);
	}
	else {
		vy = 0;
		break;
	}
}

// Handle attempting to interact with objects
if (hand_collider != noone) {
	instance_destroy(hand_collider);
	hand_collider = noone;
}

if (keyboard_check_pressed(vk_space)) {
	var colliderX;
	var colliderY;
	
	switch(facing) {
		case "right": colliderX = x + 8; colliderY = y; break;
		case "left": colliderX = x - 8; colliderY = y; break;
		case "down": colliderX = x; colliderY = y + 15; break;
		case "up": colliderX = x; colliderY = y - 15; break;
	}
	
	hand_collider = instance_create_layer(colliderX, colliderY, "Instances", obj_td_hand_collider);
}