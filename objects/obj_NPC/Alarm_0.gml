moveX = 0; //Pausar jugador
moveY = 0;

var idle = choose(0,1) //opcion de que se quede quieto
if (idle == false)
	{
		var dir = choose(1,2,3,4) //elegir direccion
		switch (dir)
			{
			case 1: moveX = -spd; sprite_index = spr_NPC_left; break;
			case 2: moveX =  spd; sprite_index = spr_NPC_right; break;
			case 3: moveY = -spd; sprite_index = spr_NPC_up; break;
			case 4: moveY =  spd; sprite_index = spr_NPC_down; break;
			}
	}
alarm[0] = random_range(1,3) * room_speed //reiniciar cada 2.5-5 segs