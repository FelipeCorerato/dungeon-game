var event_id = async_load[? "id"];

if socket == event_id {
	var buff = async_load[? "buffer"];
	buffer_seek(buff, buffer_seek_start, 0);

	var command = buffer_read(buff, buffer_u8);
	
	switch (command) {
		case PACKET_ENTITY:
			var c = buffer_read(buff, buffer_u8);
			var entity_id = buffer_read(buff, buffer_u32);
			
			if !ds_map_find_value(entities, entity_id) {
				var p = instance_create_layer(0, 0, "Instances", obj_remote_entity);
				ds_map_set(entities, entity_id, p);
				show_debug_message("Created");
			}
			
			var p = entities[? entity_id];
			
			switch (c) {
				case CMD_X: 
					p.x = buffer_read(buff, buffer_s16);
				break;
	
				case CMD_Y: 
					p.y = buffer_read(buff, buffer_s16);
				break;
	
				case CMD_NAME: 
					p.name = buffer_read(buff, buffer_string);
				break;
	
				case CMD_SPRITE: 
					p.sprite_index = buffer_read(buff, buffer_u16);
				break;
	
				case CMD_DESTROY: 
					buffer_read(buff, buffer_u8);
					ds_map_delete(entities, entity_id);
					with (p) {
						instance_destroy();
					}
				break;
			}
		break;
		
		case PACKET_PLAY:
			playing = true;
		break;
	}
}