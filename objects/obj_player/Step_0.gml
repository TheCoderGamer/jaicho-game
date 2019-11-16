/// @description Movimiento jugador

//Animacion si se mueve
if speed > 0
	{
	image_speed = imageSpeed_player;
	}
else
	{
	image_speed = 0;
	image_index = 0;
	}


// Detectar teclado
if keyboard_check(vk_left)
	{
	direction = 180;
	speed = velocity_player;
	}
	
if keyboard_check(vk_right)
	{
	direction = 0;
	speed = velocity_player;
	}
	
if keyboard_check(vk_up)
	{
	direction = 90;
	speed = velocity_player;
	}
	
if keyboard_check(vk_down)
	{
	direction = 270;
	speed = velocity_player;
	}
