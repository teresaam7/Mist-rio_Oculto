left = keyboard_check(vk_left)
right = keyboard_check(vk_right)
up = keyboard_check(vk_up)
down = keyboard_check(vk_down)

xspd = (right - left) * spd
yspd = (down - up) * spd

if place_meeting(x + xspd, y, oWall)
{
	xspd = 0
}

if place_meeting(x, y + yspd, oWall)
{
	yspd = 0
}

x += xspd
y += yspd

