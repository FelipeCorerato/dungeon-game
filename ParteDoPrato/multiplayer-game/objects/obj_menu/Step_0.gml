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
			//global.socket = network_create_socket(network_socket_tcp);
			//global.buffer = buffer_create(16384, buffer_grow, 1);									
			//global.connect = network_connect(global.socket, "127.0.0.1", PORT);
		
			room_goto_next();
		break;
		
		case 1:
			// join a game
			
			global.ip = get_string("Digite o IP que deseja entrar", "");			
			//global.socket = network_create_socket(network_socket_tcp);
			//global.buffer = buffer_create(16384, buffer_grow, 1);
			//global.connect = network_connect(global.socket, global.ip, PORT);			
			
			room_goto_next();
		break;
		
		case 2: 
			// end game
			game_end();
		break;
	}
}