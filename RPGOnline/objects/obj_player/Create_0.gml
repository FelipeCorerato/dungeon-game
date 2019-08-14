/// @description Insert description here
// You can write your code in this editor
x_axis = 0;
y_axis = 0;

spd = 2;

state = state_idle;

dir = DOWN;
action = IDLE;

view[HORIZONTAL, IDLE] = spr_player_right;
view[HORIZONTAL, MOVE] = spr_player_walk_side;

view[UP, IDLE] = spr_player_up;
view[UP, MOVE] = spr_player_walk_up;

view[DOWN, IDLE] = spr_player_down;
view[DOWN, MOVE] = spr_player_walk_down;
