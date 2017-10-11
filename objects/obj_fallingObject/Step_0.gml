/// @description Insert description here
// You can write your code in this editor
if(falling){
	if(place_meeting(x,y+3,obj_player)){
		y+=3;
	}
	else if(place_meeting(x,y,all)){
		instance_deactivate_object(self);
	}
	else{
		y+=3;
	}
}