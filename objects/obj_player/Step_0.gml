/// @description Movimiento jugador



//....................MOVIMIENTO...................
//INPUT
if keyboard_check(vk_control) //correr
	{spd = run_spd}
else{spd = walk_spd}

hinput = keyboard_check(vk_right) - keyboard_check(vk_left); //horizontal
vinput = keyboard_check(vk_down) - keyboard_check(vk_up); //vertical

//FISICAS
if(hinput !=0 or vinput !=0)
	{	image_speed = .8; //animacion
		dir = point_direction(0,0,hinput,vinput);
		moveX = lengthdir_x(spd, dir) //horizontal
		moveY = lengthdir_y(spd, dir) //vertical
		
	//-----------------------------------SPRITES------------------
	if dir = 45 {facing = 45}
	else if dir = 135 {facing = 135}
	else if dir = 225 {facing = 225}
	else if dir = 315 {facing = 315}
	
	else if dir = 0 {facing = 0}
	else if dir = 90 {facing = 90}
	else if dir = 180 {facing = 180}
	else if dir = 270 {facing = 270}

	}


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

//else {facing = -1}

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


//............................DASH............................

if timer1c < 1*1000000 + 5000 {timer1c += delta_time;} else{timer1c = 1000000;}
if keyboard_check(vk_shift)
{
	if dir == 0 && timer1c > 1000000{ //Derecha +=
		repeat (dashPixel+1){
			if (!place_meeting(x+sigXdash, y, obj_colision)){
				sigXdash = sigXdash + 1
			}
			else if (place_meeting(x+sigXdash, y, obj_colision)){
				tempSigXdash = sigXdash
				tempSigYdash = sigYdash
				animDashDerecha = true
				x = x + (sigXdash-2);
				y = y;			
				moveX = 0
				moveY = 0
				sigXdash = 1;
				sigYdash = 1
				timer1c = 0;
				break;
			}
		if sigXdash-1 = dashPixel{
			tempSigXdash = sigXdash
			tempSigYdash = sigYdash
			animDashDerecha = true
			x = x + sigXdash
			y = y
			sigXdash = 1
			sigYdash = 1
			timer1c = 0
			}
		}
	}
	
	if dir == 180 && timer1c > 1000000{ //Izquierda -=
		repeat (dashPixel+1){
			if (!place_meeting(x-sigXdash, y, obj_colision)){
				sigXdash = sigXdash + 1
			}
			if (place_meeting(x-sigXdash, y, obj_colision)){
				tempSigXdash = sigXdash
				tempSigYdash = sigYdash
				animDashIzquierda = true		
				x = x - (sigXdash-2);
				y = y;
				moveX = 0
				moveY = 0
				sigXdash = 1;
				sigYdash = 1
				timer1c = 0;
				break;
			}
		if sigXdash-1 = dashPixel{
			tempSigXdash = sigXdash
			tempSigYdash = sigYdash
			animDashIzquierda = true
			x = x - sigXdash
			y = y
			sigXdash = 1
			sigYdash = 1
			timer1c = 0
			}
		}
	}
	
	if dir == 270 && timer1c > 1000000{ //Abajo
		repeat (dashPixel+1){
			if (!place_meeting(x, y+sigYdash, obj_colision)){
				sigYdash = sigYdash + 1
			}
			if (place_meeting(x, y+sigYdash, obj_colision)){
				tempSigXdash = sigXdash
				tempSigYdash = sigYdash
				animDashAbajo = true
				x = x;
				y = y + (sigYdash-2);
				moveX = 0
				moveY = 0
				sigXdash = 1
				sigYdash = 1;
				timer1c = 0;
				break;
			}
		if sigYdash-1 = dashPixel{
			tempSigXdash = sigXdash
			tempSigYdash = sigYdash
			animDashAbajo = true
			x = x 
			y = y + sigYdash
			sigXdash = 1
			sigYdash = 1
			timer1c = 0
			}
		}
	}
	
	if dir == 90 && timer1c > 1000000{ //Arriba
		repeat (dashPixel+1){
			if (!place_meeting(x, y-sigYdash, obj_colision)){
				sigYdash = sigYdash + 1
			}
			if (place_meeting(x, y-sigYdash, obj_colision)){
				tempSigXdash = sigXdash
				tempSigYdash = sigYdash
				animDashArriba = true
				x = x;
				y = y - (sigYdash-2);
				moveX = 0
				moveY = 0
				sigYdash = 1;
				sigXdash = 1
				timer1c = 0;
				break;
			}
		if sigYdash-1 = dashPixel{
			tempSigXdash = sigXdash
			tempSigYdash = sigYdash
			animDashArriba = true
			x = x 
			y = y - sigYdash
			sigXdash = 1
			sigYdash = 1
			timer1c = 0
			}
		}
	}
	
	if dir == 45 && timer1c > 1000000{ //Derecha Arriba
		repeat (dashPixel+1){
			if (!place_meeting(x+sigXdash, y-sigYdash, obj_colision)){
				sigYdash = sigYdash +1
				sigXdash = sigXdash +1
			}
			if (place_meeting(x+sigXdash, y-sigYdash, obj_colision)){
				tempSigXdash = sigXdash/2
				tempSigYdash = sigYdash/2
				animDashDerechaArriba = true
				x = x + ((sigXdash-2)/2);
				y = y - ((sigYdash-2)/2);
				moveX = 0
				moveY = 0
				sigYdash = 1;
				sigXdash = 1
				timer1c = 0;
				break;
			}
		if sigYdash-1 = dashPixel{
			tempSigXdash = sigXdash/2
			tempSigYdash = sigYdash/2
			animDashDerechaArriba = true
			x = x + (sigXdash/2)
			y = y - (sigYdash/2)
			sigXdash = 1
			sigYdash = 1
			timer1c = 0
			}
		}
	}
	
	if dir == 135 && timer1c > 1000000{ //Arriba Izquierda
		repeat (dashPixel+1){
			if (!place_meeting(x-sigXdash, y-sigYdash, obj_colision)){
				sigYdash = sigYdash +1
				sigXdash = sigXdash +1
			}
			if (place_meeting(x-sigXdash, y-sigYdash, obj_colision)){
				tempSigXdash = sigXdash/2
				tempSigYdash = sigYdash/2
				animDashArribaIzquierda = true
				x = x - ((sigXdash-2)/2);
				y = y - ((sigYdash-2)/2);
				moveX = 0
				moveY = 0
				sigYdash = 1;
				sigXdash = 1
				timer1c = 0;
				break;
			}
		if sigYdash-1 = dashPixel{
			tempSigXdash = sigXdash/2
			tempSigYdash = sigYdash/2
			animDashArribaIzquierda = true
			x = x - (sigXdash/2)
			y = y - (sigYdash/2)
			sigXdash = 1
			sigYdash = 1
			timer1c = 0
			}
		}
	}
	
	if dir == 225 && timer1c > 1000000{ //Izquierda Abajo
		repeat (dashPixel+1){
			if (!place_meeting(x-sigXdash, y+sigYdash, obj_colision)){
				sigYdash = sigYdash +1
				sigXdash = sigXdash +1
			}
			if (place_meeting(x-sigXdash, y+sigYdash, obj_colision)){
				tempSigXdash = sigXdash/2
				tempSigYdash = sigYdash/2
				animDashIzquierdaAbajo = true
				x = x - ((sigXdash-2)/2);
				y = y + ((sigYdash-2)/2);
				moveX = 0
				moveY = 0
				sigYdash = 1;
				sigXdash = 1
				timer1c = 0;
				break;
			}
		if sigYdash-1 = dashPixel{
			tempSigXdash = sigXdash/2
			tempSigYdash = sigYdash/2
			animDashIzquierdaAbajo = true
			x = x - (sigXdash/2)
			y = y + (sigYdash/2)
			sigXdash = 1
			sigYdash = 1
			timer1c = 0
			}
		}
	}
	
	if dir == 315 && timer1c > 1000000{ //Abajo Derecha
		repeat (dashPixel+1){
			if (!place_meeting(x+sigXdash, y+sigYdash, obj_colision)){
				sigYdash = sigYdash +1
				sigXdash = sigXdash +1
			}
			if (place_meeting(x+sigXdash, y+sigYdash, obj_colision)){
				tempSigXdash = sigXdash/2
				tempSigYdash = sigYdash/2
				animDashAbajoDerecha = true
				x = x + ((sigXdash-2)/2);
				y = y + ((sigYdash-2)/2);
				moveX = 0
				moveY = 0
				sigYdash = 1;
				sigXdash = 1
				timer1c = 0;
				break;
			}
		if sigYdash-1 = dashPixel{
			tempSigXdash = sigXdash/2
			tempSigYdash = sigYdash/2
			animDashAbajoDerecha = true
			x = x + (sigXdash/2)
			y = y + (sigYdash/2)
			sigXdash = 1
			sigYdash = 1
			timer1c = 0
			}
		}
	}	
}
	



	
	
	
	
	

//TRANSICIONES
var inst = instance_place(x,y,obj_transition) //Llamar inst a el obj_transicion con el que se colisiona
if inst != noone && facing == inst.playerFacingBefore{
		with(game){ //Pasar variables a Game
			if roomTransition = false {
				spawnRoom = inst.roomgoto
				roomTransition = true
				spawnX = inst.spawnX
				spawnY = inst.spawnY
				spawnPlayerFacing = inst.playerFacingAfter
				cameraSpawnX = inst.cameraSpawnX
				cameraSpawnY = inst.cameraSpawnY
			}		
		}
}



//REALIZAR MOVIMIENTO
if(hinput !=0 or vinput !=0)
{x += moveX; y += moveY;}




//.....................MUERTE.F...................
if vida <= 0
	{
	room_goto(rm_death);
	}


	


	
	
	
	
	
	
	
	