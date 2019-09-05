if (!playing) {
	draw_set_color(c_gray);
	draw_rectangle(0, 0, room_width, room_height, false);
	
	
	// Draw character select menu
	draw_set_color(c_white);
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_text(room_width/2, 50, "Character Select");
	
	var sp = spr_char_1_down;
	
	for (var i = 0; i <= CHAR_ROGUE; i++) {	
		switch (i) {
			case CHAR_KNIGHT:
				sp = spr_char_1_face;
			break;
			
			case CHAR_BRUISER:
				sp = spr_char_2_face;
			break;
			
			case CHAR_WARRIOR:
				sp = spr_char_3_face;
			break;
			
			case CHAR_ROGUE:
				sp = spr_char_4_face;
			break;
		}
		
		draw_sprite_ext(sp, 0, 100+256*i, 200, 2, 2, 0, c_white, 1);
		if (i == char) {
			draw_sprite_ext(spr_indicator, 0, 100+256*i, 200, 2, 2, 0, c_white, 1);
		}				
	}
}