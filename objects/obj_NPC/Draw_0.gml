//---------------------------SPRITES PERSONAJE-------------------

//Animacion al moverse
if idle == false {
	timer5 = timer5 +1
	
	if dirNPC == 0 { //Derecha
		if timer5 >= 0  && timer5 < 8   {draw_sprite_general(spr_NPC_F84,0 ,0 ,64, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 8 && timer5 < 16   {draw_sprite_general(spr_NPC_F84,0 ,32,64, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 16 && timer5 <= 24 {draw_sprite_general(spr_NPC_F84,0 ,64,64, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 24 {timer5 = 0;}		
	}
		
	if dirNPC == 90 { //Arriba
		if timer5 >= 0  && timer5 < 8   {draw_sprite_general(spr_NPC_F84,0 ,0 ,98, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 8 && timer5 < 16   {draw_sprite_general(spr_NPC_F84,0 ,32,98, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 16 && timer5 <= 24 {draw_sprite_general(spr_NPC_F84,0 ,64,98, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 24 {timer5 = 0;}		
	}
		
	if dirNPC == 180 { //Izquierda
		if timer5 >= 0  && timer5 < 8   {draw_sprite_general(spr_NPC_F84,0 ,0 ,32, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 8 && timer5 < 16   {draw_sprite_general(spr_NPC_F84,0 ,32,32, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 16 && timer5 <= 24 {draw_sprite_general(spr_NPC_F84,0 ,64,32, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 24 {timer5 = 0;}		
	}
		
	if dirNPC == 270 { //Abajo
		if timer5 >= 0  && timer5 < 8   {draw_sprite_general(spr_NPC_F84,0 ,0 ,0, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 8 && timer5 < 16   {draw_sprite_general(spr_NPC_F84,0 ,32,0, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 16 && timer5 <= 24 {draw_sprite_general(spr_NPC_F84,0 ,64,0, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 24 {timer5 = 0;}		
	}
}

//Sprite al estar quieto
if idle = true {
	
	if dirNPC == 0 {   //Derecha
		draw_sprite_general(spr_NPC_F84,0 , 32,64, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)
	}
		
	if dirNPC == 90 {  //Arriba
		draw_sprite_general(spr_NPC_F84,0 ,32,98, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)
	}
		
	if dirNPC == 180 { //Izquierda
		draw_sprite_general(spr_NPC_F84,0 ,32,32, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)	
	}
		
	if dirNPC == 270 { //Abajo
		draw_sprite_general(spr_NPC_F84,0 ,32,0, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)	
	}
}
