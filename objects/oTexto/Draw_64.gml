#region
/*
guia = display_get_gui_height()
guil = display_get_gui_width()

xx = 50
yy = guia - 380

meio = guia - 100

draw_set_font(fNormal)
draw_set_color(c_white)
draw_sprite_stretched(sTextBox, 1, xx, yy, guil - 100, guia - 625)
draw_text_ext(xx + 250, yy + 32, texto[pagina], 38, guil - 400)

if npc_nome = "phic" and texto[0]
{
	draw_sprite_ext(sPhicImage, 0, 200, meio, 8, 8, 0, c_white, 1)
}else
{
	draw_sprite_ext(sPhicImage, 1, 200, meio, 8, 8, 0, c_white, 1)
}
*/
#endregion
/// @description Insert description here
// You can write your code in this editor
/*
var guia = display_get_gui_height()
var guil = display_get_gui_width()

var xx = 20
var yy = guia - 200 //tamanho quadrado
var c=c_black;
//meio = guia - 100
draw_set_font(Font1)
draw_set_color(c_white)
//draw_sprite_stretched(sTextBox, 1, xx, yy, guil - 100, guia - 625)
draw_rectangle_color(xx,yy,guil - 100,guia - 625,c,c,c,c,false)
draw_text_ext(xx + 250, yy +16, texto[pagina], 38, guil - 400)
*/

guia = display_get_gui_height()
guil = display_get_gui_width()

xx = 50
yy = guia - 380

//meio = guia - 100

draw_set_font(fNormal)
draw_set_color(c_white)
draw_sprite_stretched(sBox, 1, xx, yy, guil - 100, guia - 625)
draw_text_ext(xx + 50, yy + 32, texto[pagina], 38, guil - 400)
