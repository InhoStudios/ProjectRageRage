/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x,y,obj_umbrella)) instance_destroy();

if(place_meeting(x, y + vsp, obj_wall)){
	while(!place_meeting(x, y - 1, obj_wall)){
		y += sign(vsp);
	}
	
	vsp = 0;
	
	if(alarm[0] <= 0) {
		alarm[0] = room_speed * 5;
	}
}
y += vsp;

// bounds

if(
	x < view.vX - view.viewWidth ||
	x > view.vX + (2 * view.viewWidth) ||
	y < view.vY - view.viewHeight ||
	y > view.vY + (2 * view.viewHeight)
) {
	instance_destroy();
}