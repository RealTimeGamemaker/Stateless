/// @description Center & grab on collision

if((obj_player.state == states.liquid) or (obj_player.state == states.gas))
{
	if (player_entering_vent == true)
	{
		obj_player.x = player_vent_enter_x;
		
			
		obj_player.y += (dy * vent_enter_speed / (room_speed))
			
		if (dy == 1)
		{
			if (obj_player.y >= y + sprite_height + 16)
			{
				player_entering_vent = false;
				grabbing_player = false;
				let_player_go = false;
			}
		}

		if (dy == -1)
		{
			if (obj_player.y <= (y - obj_player.sprite_height - 16))
			{
				player_entering_vent = false;
				grabbing_player = false;
				let_player_go = false;
			}
		}
		
		if (player_entering_vent == false)
		{
			instance_activate_object(collidable_instance);
		}
	}

	if ((grabbing_player == false) and (place_meeting(x,y,obj_player) == true))
	{
		grabbing_player = true;
	}

	if ((player_entering_vent == false) and (place_meeting(x,y,obj_player) == true))
	{
		display_on_screen_popup("Press I to go in vent", false, 1);
		
		if (obj_player.vent_grate_interaction == true)
		{
			player_entering_vent = true;
			obj_player.x = x + (sprite_width / 2);
			player_vent_enter_x = obj_player.x;
			
			instance_deactivate_object(collidable_instance);
		}
	}

	if (grabbing_player == true)
	{
		
		if (let_player_go == false)
		{
			obj_player.x += (x - obj_player.x) / (room_speed / 2);
		}
	
		if ((obj_player.x >= (x+(sprite_width/2)) - 1) and (obj_player.x <= (x+(sprite_width/2)) + 1))
		{
			let_player_go = true;
		}
		
	}

	if (place_meeting(x, y, obj_player) == false)
	{
		grabbing_player = false;
		let_player_go = false;
	}
}