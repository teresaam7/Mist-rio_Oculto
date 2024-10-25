/// @description Insert description here
// You can write your code in this editor
if room == room_musica {
counter++;
counter_final++;
show_debug_message(counter)
if counter == 27
{
	counter = 0;
	show_debug_message("oi")
	instance_create_depth(random(room_width),random(room_height),0,onotas);
	global.n_notas += 1;
}

if global.n_notas == 20
{	
	room_goto(Mundo)
	
	oPlayer.x = 400
	oPlayer.y = 170
	// LOSS
	
}

if counter_final == 900
{
//room_instance_create(150,80,Quarto,oPlayer)
	room_goto(Mundo)
	global.bardo =1;
	oPlayer.x = 400
	oPlayer.y = 170
	// WIN: Diálogo com camponesa
}
////////
//global.day += 1;
if keyboard_check(ord("P")){room_goto(Quarto)}
}