
counter++;
counter_final++;

if counter == 60
{
	counter = 0;
    global.ob = choose(oPocao1, oPocao2, oPocao3, oPocao4, oPocao5, oPocao6, oPocao7, oPocao8);
	instance_create_depth(100,600,dep,global.ob);
	dep -= 5;
	show_debug_message(global.points);
	
}

if counter_final == 300
{
	global.day+=1;
	room_goto(Quarto)
	oPlayer.x = 150
	oPlayer.y = 80
	
    // GAME_OVER
	//game_end();
} 

if global.points == 15 
 { 
    // WIN
	room_goto(Mundo);
}