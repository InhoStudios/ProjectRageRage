/// @description Insert description here
// You can write your code in this editor
getInput();

if(key_held)
	image_angle = point_direction(x,y,mouse_x,mouse_y) - 90;
	
image_angle = clamp(image_angle, -75, 75);