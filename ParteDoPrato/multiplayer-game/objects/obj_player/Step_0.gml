hspd = walking_speed * (keys[KEY_RIGHT] - keys[KEY_LEFT]);
vspd = walking_speed * (keys[KEY_DOWN] - keys[KEY_UP]);

if(vspd != 0 && hspd != 0)
{
	hspd = hspd * 0.7;
	vspd = vspd * 0.7;
}

if((keys[KEY_RIGHT])&&(place_free(x+collision_speed,y)))
	x += hspd;
if((keys[KEY_LEFT])&&(place_free(x-collision_speed,y)))
	x += hspd;
if((keys[KEY_DOWN])&&(place_free(x,y+collision_speed)))
	y += vspd;
if((keys[KEY_UP])&&(place_free(x,y-collision_speed)))
	y += vspd;


