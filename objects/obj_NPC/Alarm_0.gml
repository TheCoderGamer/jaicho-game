//--------------------IA---------------------

moveX = 0; //Pausar jugador
moveY = 0;

var idle = 0 //opcion de que se quede quieto
if (idle == false)
	{
		var dir = choose(1,2,3,4) //elegir direccion
		switch (dir)
			{
			case 1: moveX = -spd; sprite_index = spr_NPC_left /*dirNPC = 1*/; break;
			case 2: moveX =  spd; sprite_index = spr_NPC_right; break;
			case 3: moveY = -spd; sprite_index = spr_NPC_up; break;
			case 4: moveY =  spd; sprite_index = spr_NPC_down; break;
			}
	}
alarm[0] = random_range(1,3) * room_speed //reiniciar cada 2.5-5 segs



//Dibujar Temp

/*
if moviendose == true {
	timerNPC = timerNPC +1
	if dirNPC == 1 {				//Left
		if timerNPC == 10 {draw_sprite_general(spr_NPC_F84, 0, 0, 0,32,32,x,y,0.5,0.5,0,c_white,c_white,c_white,c_white,1)}
		if timerNPC == 20 {draw_sprite_general(spr_NPC_F84, 0, 32, 0,32,32,x,y,0.5,0.5,0,c_white,c_white,c_white,c_white,1)}
		if timerNPC == 30 {draw_sprite_general(spr_NPC_F84, 0, 64, 0,32,32,x,y,0.5,0.5,0,c_white,c_white,c_white,c_white,1)}
		if timerNPC == 31 {timerNPC = 0}	
	
	}

} 