#macro KEY_LEFT		0
#macro KEY_RIGHT	1

keys[KEY_LEFT] = false;
keys[KEY_RIGHT] = false;

walking_speed = 4;
hspd = 0;

name = "Prato";

if (instance_exists(obj_server)) {
	visible = false;
}

character = 0;
HandleSprites(character);