/// @description Insert description here
// You can write your code in this editor
x += (xTo - x) / 3;
y += (yTo - y) / 3;

if(follow != noone){
	xTo = follow.x;
	yTo = follow.y;
}

yTo = clamp(yTo,viewHeight/2,room_height - (viewHeight/2));
xTo = clamp(xTo,viewWidth/2,room_width - (viewWidth/2));

var vm = matrix_build_lookat(x,y,-20,x,y,0,0,1,0);

camera_set_view_mat(camera,vm);

vX = x - (viewWidth/2);
vY = y - (viewHeight/2);