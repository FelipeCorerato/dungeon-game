draw_set_font(fnt_comic);
draw_set_halign(fa_center);

if (!playing) {
	draw_set_color(c_gray);
	draw_rectangle(0, 0, room_width, room_height, false);
	
	// Draw character select menu
	draw_text(room_width/2, 50, "Character Select");
	
	var sp = spr_person;
	
	for (var i = 0; i <= CHAR_KNIGHT; i++) {	
		switch (i) {
			case CHAR_ROGUE:
				sp = spr_person;
			break;
	
			case CHAR_BRUISER:
				sp = spr_person;
			break;
	
			case CHAR_KNIGHT:
				sp = spr_person;
			break;
	
			case CHAR_WARRIOR:
				sp = spr_person
			break;
		}
		
		draw_sprite_ext(sp, 0, 100+64*i, 200, 4, 4, 0, c_white, 1);
		if (i == char) {
			draw_sprite_ext(spr_indicator, 0, 100+64*i, 200, 2, 2, 0, c_white, 1);
		}
	}
}