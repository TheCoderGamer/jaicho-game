/// @description Movimiento jugador



// Movimiento jugador & sprites
if keyboard_check(vk_left) && place_free(x-1,y) //izqda
	{
	temp_velocity_player = velocity_player
	direction = 180;
	speed = velocity_player;
	sprite_index = spr_player_left;
	}

	
if keyboard_check(vk_right) && place_free(x+1,y) //drcha
	{
	temp_velocity_player = velocity_player
	direction = 0;
	speed = velocity_player;
	sprite_index = spr_player_right;
	}

	
if keyboard_check(vk_up) && place_free(x,y-1) //arriba
	{
	temp_velocity_player = velocity_player
	direction = 90;
	speed = velocity_player;
	sprite_index = spr_player_up;
	}

	
if keyboard_check(vk_down) && place_free(x,y+1) //abajo
	{
	temp_velocity_player = velocity_player
	direction = 270;
	speed = velocity_player;
	sprite_index = spr_player_down;
	}


if keyboard_check(vk_left) && keyboard_check(vk_up) && place_free(x-1,y-1) //izqda y arriba
	{
	temp_velocity_player = velocity_player
	direction = 135;
	speed = velocity_player;
	sprite_index = spr_player_up;
	}	

	
if keyboard_check(vk_up) && keyboard_check(vk_right) && place_free(x+1,y-1) //arriba y drcha
	{
	temp_velocity_player = velocity_player
	direction = 45;
	speed = velocity_player;
	sprite_index = spr_player_up;
	}	

	
if keyboard_check(vk_right) && keyboard_check(vk_down) && place_free(x+1,y+1) //drcha y abajo
	{
	temp_velocity_player = velocity_player
	direction = 315;
	speed = velocity_player;
	sprite_index = spr_player_down;
	}	

	
if keyboard_check(vk_down) && keyboard_check(vk_left) && place_free(x-1,y+1) //abajo y izda
	{
	temp_velocity_player = velocity_player
	direction = 225;
	speed = velocity_player;
	sprite_index = spr_player_down;
	}

//parar si no se pulsan teclas
if keyboard_check_released(vk_left) or keyboard_check_released(vk_right) or keyboard_check_released(vk_up) or keyboard_check_released(vk_down)
	{
		temp_velocity_player = 0;
		speed = 0;
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
	
	
	