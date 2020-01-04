/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)) {
	coefficient = floor((room_height - obj_player.y)/multiplier);
}
y = room_height - ((coefficient * multiplier) + view.viewHeight/2);