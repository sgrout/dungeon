/// @description Sword State

image_speed = 0.8;

//image index range is with decimals 3.2 - 4.0 (image_index == 3)
if animation_hit_frame(image_number - 1) {
	state_ = player.move;
}