/// @description Insert description here
// You can write your code in this editor
if(instance_exists(obj_player)) {
	coefficienty = floor((room_height - obj_player.y) / multipliery);
	coefficientx = floor((obj_player.x) / multiplierx);
}

y = room_height - ((coefficienty * multipliery) + view.viewHeight/2);
x = ((coefficientx * multiplierx) + view.viewWidth/2);