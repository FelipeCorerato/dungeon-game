hspd = walking_speed * (keys[KEY_RIGHT] - keys[KEY_LEFT]);
vspd = walking_speed * (keys[KEY_DOWN] - keys[KEY_UP]);

x += hspd;
y += vspd;

// Sprite handling
if (hspd == 0 && vspd == 0) {
	sprite_index = idle_sprite;
} else {
	sprite_index = run_sprite;
}
