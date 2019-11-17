/// @description Movimiento jugador

hinput = keyboard_check(vk_right) - keyboard_check(vk_left);
vinput = keyboard_check(vk_down) - keyboard_check(vk_up);

if hinput !=0 or vinput !=0
	{
		dir = point_direction(0,0,hinput,vinput);
		moveX = lengthdir_x(spd, dir)
		moveY = lengthdir_y(spd, dir)
		
		x += moveX
		y += moveY 	
	}



//Animacion si se mueve, sino no
if speed > 0
	{
	image_speed = imageSpeed_player;
	}
else
	{
	image_speed = 0;
	image_index = 0;
	}

	