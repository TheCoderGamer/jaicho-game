/// @description Cambiar pantalla
//Cambiar pasados 4 segundos
tempo4segs += delta_time;
if (tempo4segs >= 4 * 1000000) 
	{
    room_goto_next();
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