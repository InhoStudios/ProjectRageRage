/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(vk_space);

// vertical movement
if(vsp < maxGrav) vsp += grav;

if(place_meeting(x, y + 1, obj_wall)) {
	image_speed = 1;
	vsp = key_jump * -jsp;
	hsp = mvsp * (key_right - key_left);
} 

// vert collisions
if(place_meeting(x, y + vsp, obj_wall)){
	while(!place_meeting(x, y + sign(vsp), obj_wall)){
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;


// horizontal movement
if(place_meeting(x + hsp, y, obj_wall)){
	while(!place_meeting(x + sign(hsp), y, obj_wall)){
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

// animation handler
if(hsp != 0){
	switch(sign(hsp)){
		case 1:
			sMv = spr_player_move_right;
			sIdle = spr_player_idle_right;
			break;
		case -1:
			sMv = spr_player_move_left;
			sIdle = spr_player_idle_left;
			break;
	}
	sprite_index = sMv;
} else {
	sprite_index = sIdle;
}

// change sprites when jumping
if(!place_meeting(x, y + 1, obj_wall)) {
	sprite_index = sMv;
	if(vsp < 0)
		image_index = 1;
	else
		image_index = 3;
	image_speed = 0;
}

