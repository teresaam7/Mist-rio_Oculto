down = keyboard_check_pressed(vk_down)
up = keyboard_check_pressed(vk_up)
z = keyboard_check_pressed(ord("Z"))

#region hud colors
if down
{
	global.opt += 1
	audio_play_sound(sndOptSound, 0, false)
}

if up
{
	global.opt -= 1
	audio_play_sound(sndOptSound, 0, false)
}

if global.opt = 1
{
	oAttack.image_blend = c_orange
}else{
	oAttack.image_blend = c_white
}

if global.opt = 2
{
	oAct.image_blend = c_orange
}else{
	oAct.image_blend = c_white
}

if global.opt = 3
{
	oItem.image_blend = c_orange
}else{
	oItem.image_blend = c_white
}

if global.opt = 4
{
	oLeave.image_blend = c_orange
}else{
	oLeave.image_blend = c_white
}

if global.opt = 5 
{
	global.opt = 1
}

if global.opt = 0
{
	global.opt = 4
}
#endregion

#region hud selection
	if z and oAttack.image_blend = c_orange
	{
		audio_play_sound(sndSelect, 0, false)
	}
#endregion


