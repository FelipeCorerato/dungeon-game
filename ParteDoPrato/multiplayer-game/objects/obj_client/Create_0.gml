socket = network_create_socket(network_socket_tcp);
global.socket = socket;

buffer = buffer_create(16384, buffer_grow, 1);
connect = network_connect(socket, global.ip, PORT);

if(connect < 0){
	show_message("Can't Reach Server");
	game_restart();
}
 
entities = ds_map_create();
SendName(global.name);

char = 0;

playing = false;