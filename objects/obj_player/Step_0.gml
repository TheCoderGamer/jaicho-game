/// @description Movimiento jugador


//....................MOVIMIENTO...................
//INPUT
if keyboard_check(vk_control) //correr
	{spd = run_spd; image_speed = 0.8;}
else{spd = walk_spd; image_speed = 0.6}

hinput = keyboard_check(vk_right) - keyboard_check(vk_left); //horizontal
vinput = keyboard_check(vk_down) - keyboard_check(vk_up); //vertical

//FISICAS
if(hinput !=0 or vinput !=0)
	{	image_speed = .8; //animacion
		dir = point_direction(0,0,hinput,vinput);
		moveX = lengthdir_x(spd, dir) //horizontal
		moveY = lengthdir_y(spd, dir) //vertical
		
	//SPRITES
	switch(facing)
		{
		case 0: sprite_index = spr_player_right; break;  //derecha
		case 90: sprite_index = spr_player_up; break;    //arriba
		case 180: sprite_index = spr_player_left; break; //izquierda
		case 270: sprite_index = spr_player_down; break; //abajo
		}
//	switch (dir)
//		{
//		case 45: sprite_index = spr_player_up; break;    //derecha arriba
//		case 135: sprite_index = spr_player_up; break;   //arriba izquierda
//		case 225: sprite_index = spr_player_down; break; //izquierda abajo
//		case 315: sprite_index = spr_player_down; break; //abajo derecha
//		}
	}
else{image_index = 0;image_speed = 0;}

if(hinput =0 && vinput =0)
{image_index = 1}

//Facing
if moveX != 0 {
	switch sign(moveX) {
		case 1: facing = dir.right; break;
		case -1: facing = dir.left; break;
	}
}

else if moveY != 0 {
	switch sign(moveY) {
		case 1: facing = dir.down; break;
		case -1: facing = dir.up; break;
	}
}

else {facing = -1}

//COLISION
if moveX != 0{
	if place_meeting(x+moveX,y,obj_colision)
		{repeat abs(moveX)
			{
				if !place_meeting(x+sign(moveX),y,obj_colision)  //horizontal
					{x += sign(moveX);}
				else {break;}
			}		
			moveX = 0
		}
}

if moveY != 0{
	if place_meeting(x,y+moveY,obj_colision)
		{repeat abs(moveY)
			{
				if !place_meeting(x,y+sign(moveY),obj_colision)  //vertical
				{y += sign(moveY);}
				else {break;}
			}		
			moveY = 0
		}
}


//PINCHOS
if timer1 < 1*1000000 + 5000 {timer1 += delta_time;} else{timer1 = 1000000;} //evitar variable con numeros muy grandes
if timer1 > 1 * 1000000 && place_meeting(x,y,obj_spikes)
	{ //cosas a ejecutar si tocas los pinchos
	timer1 = 0; 
	vida = vida-1;				
	}

if timer1b < 1*1000000 + 5000 {timer1b += delta_time;} else{timer1b = 1000000;} //evitar variable con numeros muy grandes
if timer1b > 1 * 1000000 && place_meeting(x,y,obj_colision)
	{ //cosas a ejecutar si estas en una colision
	timer1b = 0; 
	vida = vida-1;				
	}


//........DASH........
if timer1c < 1*1000000 + 5000 {timer1c += delta_time;} else{timer1c = 1000000;}
if keyboard_check(vk_shift)
{
	if dir == 0 && timer1c > 1 * 1000000{ //Dash derecha
		repeat dashPixel{
			if !place_meeting(x+sigXdash,y,obj_colision)
				{doDashcounter = doDashcounter + 1; sigXdash = sigXdash + 1}
			else {sigXdash = 1; timer1c = 1000000; doDashcounter = 0; break;}
		}
		if doDashcounter = dashPixel
		{timer1c = 0; x = x + dashPixel; sigXdash = 1; doDashcounter = 0}		
	}
	
	if dir == 180 && timer1c > 1 * 1000000{ //Dash izquierda
		repeat dashPixel{
			if !place_meeting(x-sigXdash,y,obj_colision)
				{doDashcounter = doDashcounter + 1; sigXdash = sigXdash + 1}
			else {sigXdash = 1; timer1c = 1000000; doDashcounter = 0; break;}
		}
		if doDashcounter = dashPixel
		{timer1c = 0; x = x - dashPixel; sigXdash = 1; doDashcounter = 0}		
	}
	
	if dir == 270 && timer1c > 1 * 1000000{ //Dash abajo
		repeat dashPixel{
			if !place_meeting(x,y + sigYdash,obj_colision)
				{doDashcounter = doDashcounter + 1; sigYdash = sigYdash + 1}
			else {sigYdash = 1; timer1c = 1000000; doDashcounter = 0; break;}
		}
		if doDashcounter = dashPixel
		{timer1c = 0; y = y + dashPixel; sigYdash = 1; doDashcounter = 0}		
	}
	
	if dir == 90 && timer1c > 1 * 1000000{ //Dash arriba
		repeat dashPixel{
			if !place_meeting(x,y - sigYdash,obj_colision)
				{doDashcounter = doDashcounter + 1; sigYdash = sigYdash + 1}
			else {sigYdash = 1; timer1c = 1000000; doDashcounter = 0; break;}
		}
		if doDashcounter = dashPixel
		{timer1c = 0; y = y - dashPixel; sigYdash = 1; doDashcounter = 0}		
	}	
	
	if dir == 45 && timer1c > 1 * 1000000{ //Dash derecha arriba
		repeat dashPixel{
			if !place_meeting(x+(sigXdash/2),y-(sigYdash/2),obj_colision)
				{doDashcounter = doDashcounter + 1; sigXdash = sigXdash + 1; sigYdash = sigYdash +1}
			else {sigXdash = 1; sigYdash = 1; timer1c = 1000000; doDashcounter = 0; break;}
		}
		if doDashcounter = dashPixel
		{timer1c = 0; x = x + (dashPixel/2); y = y - (dashPixel/2); sigXdash = 1; doDashcounter = 0}		
	}
		
	if dir == 135 && timer1c > 1 * 1000000{ //Dash arriba izquierda
		repeat dashPixel{
			if !place_meeting(x-(sigXdash/2),y-(sigYdash/2),obj_colision)
				{doDashcounter = doDashcounter + 1; sigXdash = sigXdash + 1; sigYdash = sigYdash +1}
			else {sigXdash = 1; sigYdash = 1; timer1c = 1000000; doDashcounter = 0; break;}
		}
		if doDashcounter = dashPixel
		{timer1c = 0; x = x - (dashPixel/2); y = y - (dashPixel/2); sigXdash = 1; doDashcounter = 0}		
	}	
	
	if dir == 225 && timer1c > 1 * 1000000{ //Dash izquierda abajo
		repeat dashPixel{
			if !place_meeting(x-(sigXdash/2),y+(sigYdash/2),obj_colision)
				{doDashcounter = doDashcounter + 1; sigXdash = sigXdash + 1; sigYdash = sigYdash +1}
			else {sigXdash = 1; sigYdash = 1; timer1c = 1000000; doDashcounter = 0; break;}
		}
		if doDashcounter = dashPixel
		{timer1c = 0; x = x - (dashPixel/2); y = y + (dashPixel/2); sigXdash = 1; doDashcounter = 0}		
	}
		
	if dir == 315 && timer1c > 1 * 1000000{ //Dash abajo derecha
		repeat dashPixel{
			if !place_meeting(x+(sigXdash/2),y+(sigYdash/2),obj_colision)
				{doDashcounter = doDashcounter + 1; sigXdash = sigXdash + 1; sigYdash = sigYdash +1}
			else {sigXdash = 1; sigYdash = 1; timer1c = 1000000; doDashcounter = 0; break;}
		}
		if doDashcounter = dashPixel
		{timer1c = 0; x = x + (dashPixel/2); y = y + (dashPixel/2); sigXdash = 1; doDashcounter = 0}		
	}
}

//TRANSICIONES
var inst = instance_place(x,y,obj_transition)
if inst != noone && facing == inst.playerFacingBefore{
		with(game){
			if roomTransition = false {
				spawnRoom = inst.roomgoto
				roomTransition = true
				spawnX = inst.spawnX
				spawnY = inst.spawnY
				spawnPlayerFacing = inst.playerFacingAfter
			}		
		}	
	}



//REALIZAR MOVIMIENTO
if(hinput !=0 or vinput !=0)
{x += moveX; y += moveY;}

//.....................MUERTE...................
if vida <= 0
	{
	room_goto(rm_death);
	}


	


	
	
	
	
	
	
	
	