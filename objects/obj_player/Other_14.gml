/// @description Button Press
// You can write your code in this editor
if(!pressing and state == states.solid and player_cant_take_actions == false)
{
	pressing = true;
}

if((state == states.liquid) or (state == states.gas))
{
	if (place_meeting(x, y, obj_grate) == true)
	{
			if (vent_grate_interaction == false)
			{
				vent_grate_interaction = true;
			}
			else
			{
				vent_grate_interaction = false;
			}
	}
	else
	{
		vent_grate_interaction = false;
	}
}