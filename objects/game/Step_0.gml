/// @description Inserte aquí la descripción
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
