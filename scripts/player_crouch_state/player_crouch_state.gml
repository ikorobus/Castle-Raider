function player_crouch_state(){
	get_input();
	
	calc_movement();
	
	if hsp == 0 state = states.IDLE;
	
	apply_movement();
	
	anim();
}