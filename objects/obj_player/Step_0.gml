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
	{	dir = point_direction(0,0,hinput,vinput);
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
else{image_index = 0;}

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
				{x += sign(moveY);}
				else {break;}
			}		
			moveY = 0
		}
}

//REALIZAR MOVIMIENTO
if(hinput !=0 or vinput !=0)
{x += moveX; y += moveY;}


//...............................FullScreen.............................
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