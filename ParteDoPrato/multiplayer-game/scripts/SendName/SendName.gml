buffer_seek(global.buffer, buffer_seek_start, 0);
buffer_write(global.buffer, buffer_u8, PACKET_NAME);
buffer_write(global.buffer, buffer_string, argument0);

network_send_packet(global.socket, global.buffer, buffer_tell(global.buffer));