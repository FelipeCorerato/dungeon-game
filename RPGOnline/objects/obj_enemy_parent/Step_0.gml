/// @description Insert description here
// You can write your code in this editor
target_x = obj_player.x - x;
target_y = obj_player.y - y;

var _target_x = sign(target_x)*spd;
var _target_y = sign(target_y)*spd;

move_collide(_target_x, _target_y, obj_collision);