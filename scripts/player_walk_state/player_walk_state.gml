function player_walk_state(){
	get_input();
	calc_movement();
	
	#region state machine
	if hsp == 0 state = states.IDLE;
	
 	if attack 
	{
		state = states.ATTACK;
		image_index = 0;
	}
	
	if jump 
	{
		state = states.JUMP;
		vsp = jump_spd;
	}
	
	if block 
	{
		state = states.BLOCK;
		hsp = 0;
	}
	#endregion
	
	apply_movement();
	anim();
}