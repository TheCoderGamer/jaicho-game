//--------------------IA---------------------

moveX = 0; //Pausar jugador
moveY = 0;

idle = choose(0,1) //opcion de que se quede quieto
if (idle == false)
	{
		var dir = choose(1,2,3,4) //elegir direccion
		switch (dir)
			{
			case 1: moveX = -spd; dirNPC = 180; break;
			case 2: moveX =  spd; dirNPC = 0; break;
			case 3: moveY = -spd; dirNPC = 90; break;
			case 4: moveY =  spd; dirNPC = 270; break;
			}
	}
alarm[0] = random_range(1,3) * room_speed //reiniciar cada 2.5-5 segs






