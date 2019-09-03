// initialize server
#macro PORT		45000
#macro MAX_PLAYERS	4

#macro CHAR_KNIGHT  0
#macro CHAR_BRUISER 1
#macro CHAR_WARRIOR 2
#macro CHAR_ROGUE	3

// packets
#macro PACKET_KEY		0
#macro PACKET_ENTITY	1
#macro PACKET_NAME		2
#macro PACKET_CHARACTER	3
#macro PACKET_PLAY		4

server = network_create_server(network_socket_tcp, PORT, MAX_PLAYERS);
buffer = buffer_create(16384, buffer_grow, 1);

clients = ds_map_create();
sockets = ds_list_create();

ava_characters = ds_list_create();
ds_list_add(ava_characters, CHAR_KNIGHT);
ds_list_add(ava_characters, CHAR_BRUISER);
ds_list_add(ava_characters, CHAR_ROGUE);
ds_list_add(ava_characters, CHAR_WARRIOR);