function player_block_state(){
	get_input();
	calc_movement();
	
	#region state machine
	
	if attack 
	{
		state = states.ATTACK;
		image_index = 0;
	}
		
	if block 
		hsp = 0;
	else 
	{
		if hsp != 0 
		{
			if !on_ground()
				state = states.JUMP;
			else 
				state = states.WALK;
		}
		else
			state = states.IDLE;
	}
	
	if jump 
	{
		state = states.JUMP;
		vsp = jump_spd;
	}
	#endregion
	
	apply_movement();
	anim();
}