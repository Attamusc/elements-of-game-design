/// @description Initialize the player

// Inherit parent's event
event_inherited();

dir = DIRECTION_RIGHT;

// Movement multipler for speed changes
m = 1.0;

groundAccel = 1.0 * m;
groundFric = 1.9 * m;
airAccel = 0.75 * m;
airFric = 0.1 * m;
vxMax = 7.5 * m;
vyMax = 10.0 * m;
jumpHeight = 12.0 * m;
jumpReleaseModifier = 0.5 * m;
gravNorm = 1.0 * m;
gravSlide = 0.5 * m;

// Wall cling
clingTime = 8.0 * m;
canStick = true;
sticking = false;

// Double jump
// canDoubleJump = true;
// isDoubleJumping = false;

// Dash
dashTime = 5.0 * m;
canDash = true;
isDashing = false;

sqrt2 = sqrt(2);
