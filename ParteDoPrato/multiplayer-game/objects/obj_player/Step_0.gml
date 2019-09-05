hspd = walking_speed * (keys[KEY_RIGHT] - keys[KEY_LEFT]);
vspd = walking_speed * (keys[KEY_DOWN] - keys[KEY_UP]);

if(vspd != 0 && hspd != 0)
{
	hspd = hspd * 0.7;
	vspd = vspd * 0.7;
}	

x += hspd;
y += vspd;
