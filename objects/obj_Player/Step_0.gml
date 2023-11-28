move_x = keyboard_check(vk_right) - keyboard_check(vk_left);
move_x = move_x * move_speed;

if place_meeting(x, y+2, obj_Wall)
{
	move_y = 0;
	
	if keyboard_check(vk_space) move_y = -jump_speed;
	
}
else if move_y < 10
{
	move_y += 1;
}

move_and_collide(move_x, move_y, obj_Wall);

if move_x != 0
{
	image_xscale = sign(move_x);
	
}
if flor = 3
{
	room_goto_next()
}
if keyboard_check(vk_anykey)
{
	sprite_index=spr_Player_Run
}
else
{
	sprite_index=spr_Player
}
