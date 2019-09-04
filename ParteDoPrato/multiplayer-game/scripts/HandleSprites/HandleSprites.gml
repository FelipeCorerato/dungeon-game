switch (argument0) {
	case CHAR_KNIGHT:
		idle_sprite = spr_orc_down;
		run_sprite = spr_orc_right_w;
		hit_sprite = spr_orc_down;
	break;
	
	case CHAR_BRUISER:
		idle_sprite = spr_char_2_down;
		run_sprite = spr_char_2_right_w;
		hit_sprite = spr_char_2_down;
	break;
	
	case CHAR_ROGUE:
		idle_sprite = spr_char_1_down;
		run_sprite = spr_char_1_right_w;
		hit_sprite = spr_char_1_down;
	break;
	
	case CHAR_WARRIOR:
		idle_sprite = spr_scorpion_down;
		run_sprite = spr_scorpion_right_w;
		hit_sprite = spr_scorpion_down;
	break;
}