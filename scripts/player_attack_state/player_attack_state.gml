function player_attack_state(){
	get_input();
	
	calc_movement();
	
	if image_index >= image_number - sprite_get_speed(sprite_index)/room_speed 
	{
		if hsp != 0 state = states.WALK else state = states.IDLE;
	}
	
	apply_movement();
	
	anim();
}