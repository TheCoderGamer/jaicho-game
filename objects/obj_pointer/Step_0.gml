/// @description Movimiento cursor

// Movimiento cursor

hinput = keyboard_check(vk_right) - keyboard_check(vk_left);
vinput = keyboard_check(vk_down) - keyboard_check(vk_up);

if(hinput !=0 or vinput !=0)
	{	 
		dir = point_direction(0,0,hinput,vinput);
		moveX = lengthdir_x(spd, dir)
		moveY = lengthdir_y(spd, dir)
		x += moveX
		y += moveY 	
	}

//FullScreen
tempo1segs += delta_time;
if keyboard_check(vk_f4)
   {
   if (tempo1segs >= 1 * 1000000)
		{
		if window_get_fullscreen()
			{
				window_set_fullscreen(false);
				tempo1segs = 0
			}
		else
			{
				window_set_fullscreen(true);
				tempo1segs = 0
			}
		}
   }






