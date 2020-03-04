/// @description Move State

image_speed = 0;

var _x_input = keyboard_check(vk_right) - keyboard_check(vk_left); 
var _y_input = keyboard_check(vk_down) - keyboard_check(vk_up);
var _input_direction = point_direction(0,0,_x_input, _y_input);

var _attack_input = keyboard_check_pressed(vk_space);

if _x_input == 0 and _y_input == 0 {
	image_index = 0; //Where not moving, set image back to first frame
	image_speed = 0;
	apply_friction_to_movement_entity(); //not moving slow down
} else {
	if _x_input != 0 {
		image_xscale = _x_input;
	}	
	image_speed = 2.6;
	get_direction_facing(_input_direction);
	add_movement_maxspeed(_input_direction, acceleration_, max_speed_);
}

//Switch to UserEvent-Sword State (1)
if _attack_input == true {
	image_index = 0;
	state_ = player.sword;
}


move_movement_entity(false);
