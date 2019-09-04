socket = global.socket
//buffer = buffer_create(16384, buffer_grow, 1);
buffer = global.buffer;

//connect = network_connect(socket, global.ip, PORT);
connect = global.connect;

if(connect < 0){
	show_message("Can't Reach Server");
	game_restart();
}
 
entities = ds_map_create();
SendName(global.name);

char = 0;

playing = false;