function player_jump_state(){
	get_input();
	
	calc_movement();
	
	if on_ground() {
		if hsp != 0 
			state = states.WALK;
		else	
			state = states.IDLE;
	}
	
	if attack 
	{
		state = states.ATTACK;
		image_index = 0;
	}
	
	apply_movement();
	
	anim();
}