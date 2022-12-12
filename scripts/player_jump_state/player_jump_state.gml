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
	
	// enable smaller jumps
	
	if vsp < 0 and !jump_held 
		vsp = max(vsp, jump_spd/jump_dampner);
	
	apply_movement();
	
	anim();
}