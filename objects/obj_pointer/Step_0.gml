/// @description Movimiento cursor

// Movimiento cursor
if keyboard_check(vk_left)//izqda
	{
	temp_velocity_pointer = velocity_pointer
	direction = 180;
	speed = velocity_pointer;
	}

	
if keyboard_check(vk_right)//drcha
	{
	temp_velocity_pointer = velocity_pointer
	direction = 0;
	speed = velocity_pointer;
	}

	
if keyboard_check(vk_up)//arriba
	{
	temp_velocity_pointer = velocity_pointer
	direction = 90;
	speed = velocity_pointer;
	}

	
if keyboard_check(vk_down)//abajo
	{
	temp_velocity_pointer = velocity_pointer
	direction = 270;
	speed = velocity_pointer;
	}


if keyboard_check(vk_left) && keyboard_check(vk_up)//izqda y arriba
	{
	temp_velocity_pointer = velocity_pointer
	direction = 135;
	speed = velocity_pointer;
	}	

	
if keyboard_check(vk_up) && keyboard_check(vk_right)//arriba y drcha
	{
	temp_velocity_pointer = velocity_pointer
	direction = 45;
	speed = velocity_pointer;
	}	


if keyboard_check(vk_right) && keyboard_check(vk_down)//drcha y abajo
	{
	temp_velocity_pointer = velocity_pointer
	direction = 315;
	speed = velocity_pointer;
	}	

	
if keyboard_check(vk_down) && keyboard_check(vk_left)//abajo y izda
	{
	temp_velocity_pointer = velocity_pointer
	direction = 225;
	speed = velocity_pointer;
	}

//parar si no se pulsan teclas
if keyboard_check_released(vk_left) or keyboard_check_released(vk_right) or keyboard_check_released(vk_up) or keyboard_check_released(vk_down)
	{
	temp_velocity_pointer = 0;
	speed = 0;
	}


//FullScreen
tempo1segs += delta_time;
if keyboard_check(vk_f4)
   {
   if (tempo4segs >= 1 * 1000000)
		{
		if window_get_fullscreen()
			{
				window_set_fullscreen(false);
				tempo4segs = 0
			}
		else
			{
				window_set_fullscreen(true);
				tempo4segs = 0
			}
		}
   }






