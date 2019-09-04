var event_id = async_load[? "id"];

if (server == event_id) {
	var type = async_load[? "type"];
	var sock = async_load[? "socket"];
	
	// connect
	if (type == network_type_connect) {
		// create player and add the socket to the list
		ds_list_add(sockets, sock);
		
		//create a player
		var player = instance_create_layer(100, 100 + 32 * sock, "instances", obj_player);
		
		ds_map_add(clients, sock, player);
		
		ready[sock] = false;
		
		// send data about all other players
		for (var i = 0; i < instance_number(obj_player); i++) {
			var pl = instance_find(obj_player, i);
			SendRemoteEntity(sock, CMD_X, pl.id, pl.x);
			SendRemoteEntity(sock, CMD_Y, pl.id, pl.y);
			SendRemoteEntity(sock, CMD_NAME, pl.id, pl.name);
			SendRemoteEntity(sock, CMD_SPRITE, pl.id, pl.sprite_index);
		}
	}
	
	// disconnect
	if (type == network_type_disconnect) {
		var player = clients[? sock];
		if (instance_exists(player)) {
			with (player) {
				instance_destroy();
			}
		}
		
		ds_list_delete(sockets, ds_list_find_index(sockets, sock));
		ds_map_delete(clients, sock);
		
		SendRemoteEntity(sock, CMD_DESTROY, player.id, player.id)
	}
} else if (event_id != global.socket) {
	var sock = async_load[? "id"];
	var buff = async_load[? "buffer"];
	
	buffer_seek(buff, buffer_seek_start, 0);
	var command = buffer_read(buff, buffer_u8);
	
	var player = clients[? sock];
	switch (command) {
		case PACKET_KEY:
			with (player) {
				var key = buffer_read(buff, buffer_u8);
				var state = buffer_read(buff, buffer_u8);
				
				keys[key] = state;
			}
		break;
		
		case PACKET_NAME:
			player.name = buffer_read(buff, buffer_string);
			for(var i = 0; i < ds_list_size(sockets); i++){
				var so = ds_list_find_value(sockets, i);
				SendRemoteEntity(so, CMD_NAME, player.id, player.name);
			}
		break;
		
		case PACKET_CHARACTER:
			if (ready[sock] == false) {
				var character = buffer_read(buff, buffer_u8);
				if (ds_list_find_value(ava_characters, ds_list_find_index(ava_characters, character)) != undefined) {			
					player.character = character;
					ready[sock] = true;
					
					// Let the client play 
					SendPlay(sock);
					
					with (player) {
						HandleSprites(character);
					}
				
					ds_list_delete(ava_characters, ds_list_find_index(ava_characters, character));
				}		
			}
		break;
	}
}