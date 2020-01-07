/// @description Insert description here
// You can write your code in this editor
hsp = 0;
vsp = 0;
fsp = 0;
grav = 0.15;
maxGrav = 1;
mvsp = 2;
jsp = 5;
depth = -5;
umb = obj_umbrella;
umbrella = instance_create_depth(x, y, depth + 1, umb);

lr = 0;

sMv = spr_player_move_left;
sIdle = spr_player_idle_left;
image_speed = 1;