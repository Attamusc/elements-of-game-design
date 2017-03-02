/// @description Handle moving the player

get_inputs();

var tempAccel, tempFric;

// Apply the correct forms of acceleration and friction
if (grounded) {
	tempAccel = groundAccel;
	tempFric = groundFric;
	
	// Reset double jump properties
	// canDoubleJump = true;
}
else {
	tempAccel = airAccel;
	tempFric = airFric;
}

// Reset wall cling
if((!collisionLeft && !collisionRight) || grounded) {
	canStick = true;
	sticking = false;
}

// Cling to walls
if (((right && collisionLeft) || (left && collisionRight)) && canStick && !grounded) {
	alarm[0] = clingTime;
	sticking = true;
	canStick = false;
	
	// canDoubleJump = true;
}

// Handle gravity
if (!grounded) {
	if ((collisionLeft || collisionRight) && vy >= 0) {
		// Wall slide
		vy = approach(vy, vyMax, gravSlide);
	}
	else {
		vy = approach(vy, vyMax, gravNorm);
	}
}

if (!sticking && !isDashing) {
	// Left Movement
	if (left && !right) {
		dir = DIRECTION_LEFT;
	
		// Apply acceleration left
		if (vx > 0) {
			vx = approach(vx, 0, tempFric);
		}
		vx = approach(vx, -vxMax, tempAccel);
	}

	// Right Movement
	if (right && !left) {
		dir = DIRECTION_RIGHT;
	
		// Apply acceleration right
		if (vx < 0) {
			vx = approach(vx, 0, tempFric);
		}
		vx = approach(vx, vxMax, tempAccel);
	}
}

// Friction
if (!right && !left && !isDashing) {
	vx = approach(vx, 0, tempFric);
}


if (jumpPressed) {
	if (grounded) {
		// Jump
		vy = -jumpHeight;
		
		if (global.dust_enabled) {
			instance_create_layer(x, y, "Instances", obj_jump_dust);
		}
		// canDoubleJump = true;
	}
	else if (collisionLeft) {
		// Wall Jump Left
		vy = -jumpHeight * 1.1;
	
		if (left) {
			vx = jumpHeight * 0.75;
		}
		else {
			vx = vxMax;
			// canDoubleJump = true;
		}
	}
	else if (collisionRight) {
		// Wall Jump Right
		vy = -jumpHeight * 1.1;
	
		if (right) {
			vx = -jumpHeight * 0.75;
		}
		else {
			vx = -vxMax;
			// canDoubleJump = true;
		}
	}
	//else if (canDoubleJump) {
	//	// Double Jump
	//	vy = -doubleJumpHeight;
	//	canDoubleJump = false;
	//}
}

if (jumpReleased) {
	if (vy < 0) {
		vy *= jumpReleaseModifier;
	}
}

if (dashPressed && canDash && !sticking) {
	alarm[1] = dashTime;
	isDashing = true;
	canDash = false;
	vx = dir * 20.0;
}

if (dashReleased) {
	isDashing = false;
	canDash = true;
}

if (isDashing) {
	vy = 0;
}

// Figure out direction facing based on horizontal velocity
if (vx != 0) {
	dir = sign(vx);
}

// Attack!!
if (attackPressed) {
	if (global.awesome_attack_enabled) {
		attacking = true;
		alarm[3] = attackPauseTime;
		
		if (instance_number(obj_awesome_blast) < 3) {
			var projectile = instance_create_layer(x + dir * 15, y - 20, "Instances", obj_awesome_blast);
			projectile.dir = dir;
			projectile.image_xscale = dir;
		}
	}
	else if (global.lame_attack_enabled) {
		attacking = true;
		alarm[3] = attackPauseTime;
		
		if (instance_number(obj_lame_blast) < 3) {
			var projectile = instance_create_layer(x + dir * 15, y - 20, "Instances", obj_lame_blast);
			projectile.dir = dir;
			projectile.image_xscale = dir;
		}
	}
}