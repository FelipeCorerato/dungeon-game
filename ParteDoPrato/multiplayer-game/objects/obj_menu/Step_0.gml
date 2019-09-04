if (keyboard_check_pressed(vk_down)) {
	cur_index ++;
}

if (keyboard_check_pressed(vk_up)) {
	cur_index --;
}

cur_index = clamp(cur_index, 0, array_length_1d(menu) - 1);

if (keyboard_check_pressed(vk_enter)) {
	switch (cur_index) {
		case 0:
			// create a game
			instance_create_layer(0, 0, "instances", obj_server);
			room_goto_next();
		break;
		
		case 1:
			// join a game
			global.name = get_string("Enter the server IP you want to join: ","");
			room_goto_next();
			break;
			
		case 2: 
			// 
			game_end();
			break;
	}
}