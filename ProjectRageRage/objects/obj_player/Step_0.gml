/// @description Insert description here
// You can write your code in this editor
getInput();

// vertical movement
if(vsp < maxGrav) vsp += grav;

if(place_meeting(x, y + 1, obj_wall)) {
	image_speed = 1;
	if(key_jump){
		var dir = umbrella.image_angle + 90;
		vsp = lengthdir_y(jsp,dir);
		hsp = lengthdir_x(jsp,dir);
	} else {
		hsp = !key_held * mvsp * (key_right - key_left);
	}
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
	if(vsp < 0) vsp = 0;
}
x += hsp;

// animation handler
if(hsp != 0){	
	lr = sign(hsp);
	switch(lr){
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

if(vsp >= 0 && !key_held) {
	if(umbrella.image_angle > 5 || umbrella.image_angle < -5){
		umbrella.image_angle -= 5 * sign(umbrella.image_angle);
	} else {
		umbrella.image_angle = 0;
	}
}

umbrella.x = x;
umbrella.y = y;
umbrella.depth = depth + lr;