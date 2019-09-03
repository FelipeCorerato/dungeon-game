hspd = walking_speed * (keys[KEY_RIGHT] - keys[KEY_LEFT]);

x += hspd;

// Sprite handling
if (hspd == 0) {
	sprite_index = idle_sprite;
} else {
	sprite_index = run_sprite;
}