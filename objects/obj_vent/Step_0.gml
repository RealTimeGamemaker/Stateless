/// @description Insert description here
// You can write your code in this editor
if((obj_player.state == states.liquid) or (obj_player.state == states.gas))
{
	if (player_entering_vent == true)
	{
		obj_player.y = player_vent_enter_y;
		obj_player.x = grabbed_x + dx_entering * (vent_enter_speed / room_speed);
		grabbed_x = obj_player.x;
						
		if (dx_entering == 1) 		
		{
			if (obj_player.x >= (x + sprite_width + 16))
			{
				player_entering_vent = false;
			}
		}
		else
		{
			if ((obj_player.x + (obj_player.sprite_width / 2)) < (x + sprite_width + 16))
			{
				player_entering_vent = false;
			}
		}
		
		if (player_entering_vent == false)
		{
			instance_activate_object(collidable_instance);
		}
	}

	if (((player_entering_vent == false) and (place_meeting(x,y,obj_player) == true)) or
	((dx = 1) and (place_meeting(x+9, y, obj_player) == true)) or
	((dx = -1) and (place_meeting(x-9, y, obj_player) == true))
	)
	{
		obj_player.touching_vent_grate = true;
		display_on_screen_popup("Press I to go through vent", false, 0.1);
		
		if (obj_player.vent_grate_interaction == true)
		{
			player_entering_vent = true;
			grabbed_x = obj_player.x;
			
			if (obj_player.state == states.gas)
			{
				player_vent_enter_y = obj_player.y + (sprite_height / 2);
			}
			else
			{
				player_vent_enter_y = obj_player.y;
			}

			if ((obj_player.x) < x+sprite_width)
			{
				dx_entering = 1;
			}
			else
			{
				dx_entering = -1;
			}
			instance_deactivate_object(collidable_instance);
			
			obj_player.vent_grate_interaction = false;
		}
	}
}