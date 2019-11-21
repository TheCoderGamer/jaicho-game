/// @description Cambiar pantalla
//Cambiar pasados 4 segundos
tempo4segs += delta_time;
if (tempo4segs >= 4 * 1000000) 
	{
    room_goto_next();
	}