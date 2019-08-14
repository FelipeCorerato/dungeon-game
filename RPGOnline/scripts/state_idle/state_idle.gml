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

if (place_meeting(x+x_axis, y, obj_collision)) 
{
	while (!place_meeting(x+sign(x_axis), y, obj_collision))
	{
		x += sign(x_axis); 
	}
	x_axis = 0;
}
x += x_axis;

if (place_meeting(x, y+y_axis, obj_collision)) 
{
	while (!place_meeting(x, y+sign(x_axis), obj_collision))
	{
		y += sign(y_axis);
	}
	y_axis = 0;
}
y += y_axis;