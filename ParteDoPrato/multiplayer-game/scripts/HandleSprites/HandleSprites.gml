switch (argument0) {
	case CHAR_KNIGHT:
		spr_up_w = spr_char_1_up_w;
		spr_down_w = spr_char_1_down_w;
		spr_left_w = spr_char_1_left_w;
		spr_right_w = spr_char_1_right_w;
		spr_up = spr_char_1_up;
		spr_down = spr_char_1_down;
		spr_left = spr_char_1_left;
		spr_right = spr_char_1_right;
		
		idle_sprite = spr_down;

		// hit_sprite = spr_orc_down;
	break;
	
	case CHAR_BRUISER:
		spr_up_w = spr_char_2_up_w;
		spr_down_w = spr_char_2_down_w;
		spr_left_w = spr_char_2_left_w;
		spr_right_w = spr_char_2_right_w;
		spr_up = spr_char_2_up;
		spr_down = spr_char_2_down;
		spr_left = spr_char_2_left;
		spr_right = spr_char_2_right;
		
		idle_sprite = spr_down;
	break;
	
	case CHAR_ROGUE:
		spr_up_w = spr_char_4_up_w;
		spr_down_w = spr_char_4_down_w;
		spr_left_w = spr_char_4_left_w;
		spr_right_w = spr_char_4_right_w;
		spr_up = spr_char_4_up;
		spr_down = spr_char_4_down;
		spr_left = spr_char_4_left;
		spr_right = spr_char_4_right;
		
		idle_sprite = spr_down;
	break;
	
	case CHAR_WARRIOR:
		spr_up_w = spr_char_3_up_w;
		spr_down_w = spr_char_3_down_w;
		spr_left_w = spr_char_3_left_w;
		spr_right_w = spr_char_3_right_w;
		spr_up = spr_char_3_up;
		spr_down = spr_char_3_down;
		spr_left = spr_char_3_left;
		spr_right = spr_char_3_right;
		
		idle_sprite = spr_down;
		
	break;
}