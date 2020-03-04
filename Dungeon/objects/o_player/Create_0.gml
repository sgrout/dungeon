/// @description Init movement
// You can write your code in this editor

initialize_movement_entity(0.5, 1.0, o_solid);

image_speed = 0;
acceleration_ = 0.3;
max_speed_ = 1.5;
direction_facing_ = dir.right;


enum player {
	move,
	sword,
	hit
}

enum dir {
	right,
	up,
	left,
	down
}

state_ = player.move;

sprite_[player.move, dir.right] = s_player_walk_right;
sprite_[player.move, dir.up] = s_player_walk_up;
sprite_[player.move, dir.left] = s_player_walk_right;
sprite_[player.move, dir.down] = s_player_walk_down;

sprite_[player.sword, dir.right] = s_player_attack_right;
sprite_[player.sword, dir.up] = s_player_attack_up;
sprite_[player.sword, dir.left] = s_player_attack_right;
sprite_[player.sword, dir.down] = s_player_attack_down;

sprite_[player.hit, dir.right] = s_player_hit_right;
sprite_[player.hit, dir.up] = s_player_hit_up;
sprite_[player.hit, dir.left] = s_player_hit_right;
sprite_[player.hit, dir.down] = s_player_hit_down;
