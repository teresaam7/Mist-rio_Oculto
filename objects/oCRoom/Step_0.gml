

if place_meeting(x, y, oPlayer) and room = Quarto
{
	room_goto(Mundo)
	oPlayer.x = 400
	oPlayer.y = 170
}

if place_meeting(x, y, oPlayer) and room = Mundo
{
	room_goto(Quarto2)
	oPlayer.x = 50
	oPlayer.y = 110
}
if place_meeting(x, y, oPlayer) and room = Quarto2
{
	room_goto(Mundo)
	oPlayer.x = 819
	oPlayer.y = 216
}