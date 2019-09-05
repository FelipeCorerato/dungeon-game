/// @description Insert description here
// You can write your code in this editor


if speed > 0 {
    switch ((((direction + 22.5) mod 360) + 360) mod 360) div 45 {
    case 0: sprite_index = spr_left; break;
    case 1: sprite_index = spr_left_up; break;
    case 2: sprite_index = spr_up; break;
    case 3: sprite_index = spr_right_up; break;
    case 4: sprite_index = spr_right; break;
    case 5: sprite_index = spr_right_down; break;
    case 6: sprite_index = spr_down; break;
    case 7: sprite_index = spr_down_left; break;
    }
}