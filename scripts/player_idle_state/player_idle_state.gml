function player_idle_state(){
	get_input();
	
	calc_movement();
	
	if hsp != 0 state = states.WALK;
	
	if attack 
	{
		state = states.ATTACK;
		image_index = 0;
	}
	
	apply_movement();
	
	anim();
}