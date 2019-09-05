/// @description Insert description here
// You can write your code in this editor

// Sprite handling
if (hspd == 0 && vspd == 0)
	sprite_index = idle_sprite;

if (hspd > 0)
	sprite_index = spr_right_w;
else if (hspd < 0)
	sprite_index = spr_left_w;
else if (vspd > 0)
	sprite_index = spr_down_w;
else if (vspd < 0)
	sprite_index = spr_up_w;

