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
	

if(moveX = 0 && moveY = 0)
{/*moviendose = false*/image_index = 1; image_speed = 0}
else {/*moviendose = true*/image_speed = 0.6}

//REALIZAR MOVIMIENTO
x += moveX; 
y += moveY;