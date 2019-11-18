/// @description Configuracion

//..................LIBRE MOVIMIENTO.............
freeMoveCam = keyboard_check(ord("T")) //Tecla teclado "T"
if freeMoveCam = true
	{x += (keyboard_check(vk_numpad3)-keyboard_check(vk_numpad1))*4;	
	y += (keyboard_check(vk_numpad2)-keyboard_check(vk_numpad5))*4;}

//......................SEGUIR.....................
else
	{x = clamp(x,siguiendo.x-hborder,siguiendo.x+hborder)
	y = clamp(y,siguiendo.y-vborder,siguiendo.y+vborder)}
