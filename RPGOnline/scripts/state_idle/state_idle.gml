get_input();

if (x_axis != 0 || (y_axis != 0))
	action = MOVE;
else
	action = IDLE;

if (x_axis != 0)
{
	dir = HORIZONTAL;
	if (x_axis > 0)
		image_xscale = 1;
	else if (x_axis < 0)
		image_xscale = -1;
}

if (y_axis != 0)
{
	image_xscale = 1;
	if (y_axis > 0)
		dir = DOWN;
	else if (y_axis < 0)
		dir = UP;
}

var _direction = point_direction(0, 0, x_axis, y_axis);
var _length = spd * (x_axis != 0 || y_axis != 0);

x_axis = lengthdir_x(_length, _direction);
y_axis = lengthdir_y(_length, _direction);

move_collide(x_axis, y_axis, obj_collision);