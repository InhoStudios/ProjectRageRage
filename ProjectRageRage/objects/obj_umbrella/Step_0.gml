/// @description Insert description here
// You can write your code in this editor
getInput();

if(key_held)
	image_angle += (key_left - key_right);
	
image_angle = clamp(image_angle, -75, 75);