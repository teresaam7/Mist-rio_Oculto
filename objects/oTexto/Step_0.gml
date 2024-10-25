

///////////////
if inicializar == false{
    Scriptstextos()
    inicializar = true
}

if keyboard_check_pressed(ord("F"))
{
    if pagina < array_length(texto) - 1
    {
        pagina ++
    }else{
    instance_destroy(oTexto)
    }
	
}

if mouse_check_button_pressed(mb_left){
    if pagina<array_length(texto)-1{
        pagina++;
    }else{
        global.dialogo=false;
        instance_destroy();
        instance_destroy(ochar);
        //global.char = false;
    }
}
