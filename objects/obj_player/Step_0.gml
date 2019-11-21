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
	switch(dir)
		{
		case 0: sprite_index = spr_player_right; break;  //derecha
		case 90: sprite_index = spr_player_up; break;    //arriba
		case 180: sprite_index = spr_player_left; break; //izquierda
		case 270: sprite_index = spr_player_down; break; //abajo
		case 45: sprite_index = spr_player_up; break;    //derecha arriba
		case 135: sprite_index = spr_player_up; break;   //arriba izquierda
		case 225: sprite_index = spr_player_down; break; //izquierda abajo
		case 315: sprite_index = spr_player_down; break; //abajo derecha
		}
	}
else{image_index = 0;image_speed = 0;}

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


//Pinchos
if timer1 < 1*1000000 + 5000 {timer1 += delta_time;} else{timer1 = 1000000;} //evitar variable con numeros muy grandes
if timer1 > 1 * 1000000 && place_meeting(x,y,obj_spikes)
	{
	timer1 = 0; 
	vida = vida-1;				
	}

//REALIZAR MOVIMIENTO
if(hinput !=0 or vinput !=0)
{x += moveX; y += moveY;}

//.....................VIDA...................
if vida <= 0
	{
	room_goto(rm_death);
	}


	


	
	
	
	
	
	
	
	