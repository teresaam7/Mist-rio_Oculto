#region //movement
left = keyboard_check(vk_left)
right = keyboard_check(vk_right)
up = keyboard_check(vk_up)
down = keyboard_check(vk_down)

xspd = (right - left) * spd
yspd = (down - up) * spd

if left
{
	image_xscale = -1
}
if right
{
	image_xscale = 1
}

if left or right or up or down
{
	sprite_index = sRunning
}else
{
	sprite_index = sPlayer
}

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

#endregion


#region //npc interactions
/*
if distance_to_object(oNpcs) <= 5 
{
	if keyboard_check_pressed(ord("Z")){
	npc = instance_nearest(x,  y, oNpcs)
	dialogo = instance_create_layer(x, y, "Dialogos", oTexto)
	dialogo.npc_nome = npc.nome
	}
}else{
	instance_destroy(oTexto)
}
*/
#endregion

#region Diálogo
//while global.move{xspd = 0;}
if distance_to_object(oNpcs) <= 10
//if place_meeting(x,y,onpcs)
{
    if keyboard_check_pressed(ord("F")){
            //global.move = true;
    var _npc = instance_nearest(x,  y, oNpcs)
	switch _npc.nome {
		case "bardo":
		obj = oBardoGrande;
		break;
		case "camponesa":
		obj = oCamponesaGrande;
		break;
		case "bruxa":
		obj = oBruxaGrande;
		break;
		case "ferreiro":
		obj = oFerreiroGrande;
		break
		case "curandeira":
		obj = oCurandeiraGrande;
		case "bardo1":
		obj = oBardoGrande;
		break;
		case "camponesa1":
		obj = oCamponesaGrande;
		break;
		case "bruxa1":
		obj = oBruxaGrande;
		break;
		case "ferreiro1":
		obj = oFerreiroGrande;
		break
		case "camponesa2":
		obj = oCamponesaGrande;
		break;
		case "bruxa2":
		obj = oBruxaGrande;
		break;
		case "ferreiro2":
		obj = oFerreiroGrande;
		break
		case "bardo2" :
		obj = oBardoGrande;
		break

	}
	show_debug_message(global.day)
	show_debug_message(_npc.nome)
	//show_debug_message(obj)

		
		
    global.char=true;
    var _dialogo = instance_create_layer(x, y, "Dialogo", oTexto)
    _dialogo.npc_nome = _npc.nome
    }
}
else{
    //global.move = false;
    global.char = false;
    instance_destroy(oTexto)
}

if global.char{
	instance_create_layer(x+120, y-70, "Instances",obj)
	instance_create_layer(x-120, y-70, "Instances",ochar)
	global.char=false;}

if !instance_exists(oTexto)
{
	instance_destroy(obj)
	  instance_destroy(ochar)
}

if instance_exists(oTexto)
{
	spd = 0
}else
{
	spd = 1
}


#endregion

