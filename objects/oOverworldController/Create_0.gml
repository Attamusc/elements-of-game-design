/// @description Initialize waypoints

waypoints = [];

var waypoint_information_list = [
	[70, 291, "Show, Don't Tell", rm_level_zero],
	[320, 291, "Allow for Cleverness", rm_level_one],
	[320, 179, "Embrace Exploration", rm_level_two],
	[320, 70, "Go BIG", rm_level_three],
	[572, 70, "Make the Player Care", rm_level_four]
];
num_waypoints = array_length_1d(waypoint_information_list);

// Create all the waypoints
for (var i = 0; i < num_waypoints; i++) {
	var waypoint_information = waypoint_information_list[i];
	var waypoint = instance_create_layer(waypoint_information[0], waypoint_information[1], "Waypoints", obj_level_waypoint);
	waypoint.name = waypoint_information[2];
	waypoint.target_room = waypoint_information[3];
	
	waypoints[i] = waypoint;
}

// Create the player placed at the current waypoint
player = instance_create_layer(50, 50, "Instances", obj_atta_overworld);

player.x = waypoints[global.current_level].x;
player.y = waypoints[global.current_level].y;

audio_play_sound(snd_super_mario_world, 10, 0);