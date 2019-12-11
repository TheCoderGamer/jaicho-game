//---------------------------SPRITES PERSONAJE-------------------

//Animacion al moverse
if !(hinput = 0 && vinput == 0) {
	timer5 = timer5 +1
	
	if facing == 0 { //Derecha
		if timer5 >= 0  && timer5 < 8   {draw_sprite_general(spr_player,0 ,0 ,64, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 8 && timer5 < 16   {draw_sprite_general(spr_player,0 ,32,64, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 16 && timer5 <= 24 {draw_sprite_general(spr_player,0 ,64,64, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 24 {timer5 = 0;}		
	}
		
	if facing == 90 { //Arriba
		if timer5 >= 0  && timer5 < 8   {draw_sprite_general(spr_player,0 ,0 ,98, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 8 && timer5 < 16   {draw_sprite_general(spr_player,0 ,32,98, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 16 && timer5 <= 24 {draw_sprite_general(spr_player,0 ,64,98, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 24 {timer5 = 0;}		
	}
		
	if facing == 180 { //Izquierda
		if timer5 >= 0  && timer5 < 8   {draw_sprite_general(spr_player,0 ,0 ,32, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 8 && timer5 < 16   {draw_sprite_general(spr_player,0 ,32,32, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 16 && timer5 <= 24 {draw_sprite_general(spr_player,0 ,64,32, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 24 {timer5 = 0;}		
	}
		
	if facing == 270 { //Abajo
		if timer5 >= 0  && timer5 < 8   {draw_sprite_general(spr_player,0 ,0 ,0, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 8 && timer5 < 16   {draw_sprite_general(spr_player,0 ,32,0, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 16 && timer5 <= 24 {draw_sprite_general(spr_player,0 ,64,0, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)}
		if timer5 >= 24 {timer5 = 0;}		
	}
}

//Sprite al estar quieto
if (hinput = 0 && vinput == 0) {
	
	if facing == 0 {   //Derecha
		draw_sprite_general(spr_player,0 , 32,64, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)
	}
		
	if facing == 90 {  //Arriba
		draw_sprite_general(spr_player,0 ,32,98, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)
	}
		
	if facing == 180 { //Izquierda
		draw_sprite_general(spr_player,0 ,32,32, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)	
	}
		
	if facing == 270 { //Abajo
		draw_sprite_general(spr_player,0 ,32,0, 30,32,x,y,0.5,0.5,0,noC,noC,noC,noC,1)	
	}
}


//Animacion de Dash
if animDashDerecha == true {
	timerAnim = timerAnim +1
	if timerAnim >= 0  && timerAnim <= 4  {draw_sprite_general(spr_player,0 , 32,64, 30,32,(tempX+((tempSigXdash/6)*1)) ,tempY,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.2}
	if timerAnim >= 1  && timerAnim <= 6  {draw_sprite_general(spr_player,0 , 32,64, 30,32,(tempX+((tempSigXdash/6)*2)) ,tempY,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.3}
	if timerAnim >= 2  && timerAnim <= 8  {draw_sprite_general(spr_player,0 , 32,64, 30,32,(tempX+((tempSigXdash/6)*3)) ,tempY,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.4}
	if timerAnim >= 3  && timerAnim <= 10 {draw_sprite_general(spr_player,0 , 32,64, 30,32,(tempX+((tempSigXdash/6)*4)) ,tempY,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.5}
	if timerAnim >= 4  && timerAnim <= 12 {draw_sprite_general(spr_player,0 , 32,64, 30,32,(tempX+((tempSigXdash/6)*5)) ,tempY,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.6}
	if timerAnim >= 5  && timerAnim <= 14 {draw_sprite_general(spr_player,0 , 32,64, 30,32,(tempX+((tempSigXdash/6)*6)) ,tempY,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.7}
	if timerAnim >= 14 {timerAnim = 0; animDashDerecha = false}	
}
if animDashIzquierda == true {
	timerAnim = timerAnim +1
	if timerAnim >= 0  && timerAnim <= 4  {draw_sprite_general(spr_player,0 , 32,32, 30,32,(tempX-((tempSigXdash/6)*1)) ,tempY,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.2}
	if timerAnim >= 1  && timerAnim <= 6  {draw_sprite_general(spr_player,0 , 32,32, 30,32,(tempX-((tempSigXdash/6)*2)) ,tempY,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.3}
	if timerAnim >= 2  && timerAnim <= 8  {draw_sprite_general(spr_player,0 , 32,32, 30,32,(tempX-((tempSigXdash/6)*3)) ,tempY,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.4}
	if timerAnim >= 3  && timerAnim <= 10 {draw_sprite_general(spr_player,0 , 32,32, 30,32,(tempX-((tempSigXdash/6)*4)) ,tempY,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.5}
	if timerAnim >= 4  && timerAnim <= 12 {draw_sprite_general(spr_player,0 , 32,32, 30,32,(tempX-((tempSigXdash/6)*5)) ,tempY,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.6}
	if timerAnim >= 5  && timerAnim <= 14 {draw_sprite_general(spr_player,0 , 32,32, 30,32,(tempX-((tempSigXdash/6)*6)) ,tempY,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.7}
	if timerAnim >= 14 {timerAnim = 0; animDashIzquierda = false}	
}
if animDashAbajo == true {
	timerAnim = timerAnim +1
	if timerAnim >= 0  && timerAnim <= 4  {draw_sprite_general(spr_player,0 , 32,0, 30,32, tempX,(tempY+((tempSigYdash/6)*1)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.2}
	if timerAnim >= 1  && timerAnim <= 6  {draw_sprite_general(spr_player,0 , 32,0, 30,32, tempX,(tempY+((tempSigYdash/6)*2)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.3}
	if timerAnim >= 2  && timerAnim <= 8  {draw_sprite_general(spr_player,0 , 32,0, 30,32, tempX,(tempY+((tempSigYdash/6)*3)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.4}
	if timerAnim >= 3  && timerAnim <= 10 {draw_sprite_general(spr_player,0 , 32,0, 30,32, tempX,(tempY+((tempSigYdash/6)*4)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.5}
	if timerAnim >= 4  && timerAnim <= 12 {draw_sprite_general(spr_player,0 , 32,0, 30,32, tempX,(tempY+((tempSigYdash/6)*5)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.6}
	if timerAnim >= 5  && timerAnim <= 14 {draw_sprite_general(spr_player,0 , 32,0, 30,32, tempX,(tempY+((tempSigYdash/6)*6)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.7}
	if timerAnim >= 14 {timerAnim = 0; animDashAbajo = false}	
}
if animDashArriba == true {
	timerAnim = timerAnim +1
	if timerAnim >= 0  && timerAnim <= 4  {draw_sprite_general(spr_player,0 , 32,98, 30,32, tempX,(tempY-((tempSigYdash/6)*1)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.2}
	if timerAnim >= 1  && timerAnim <= 6  {draw_sprite_general(spr_player,0 , 32,98, 30,32, tempX,(tempY-((tempSigYdash/6)*2)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.3}
	if timerAnim >= 2  && timerAnim <= 8  {draw_sprite_general(spr_player,0 , 32,98, 30,32, tempX,(tempY-((tempSigYdash/6)*3)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.4}
	if timerAnim >= 3  && timerAnim <= 10 {draw_sprite_general(spr_player,0 , 32,98, 30,32, tempX,(tempY-((tempSigYdash/6)*4)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.5}
	if timerAnim >= 4  && timerAnim <= 12 {draw_sprite_general(spr_player,0 , 32,98, 30,32, tempX,(tempY-((tempSigYdash/6)*5)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.6}
	if timerAnim >= 5  && timerAnim <= 14 {draw_sprite_general(spr_player,0 , 32,98, 30,32, tempX,(tempY-((tempSigYdash/6)*6)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.7}
	if timerAnim >= 14 {timerAnim = 0; animDashArriba = false}	
}
if animDashDerechaArriba == true {
	timerAnim = timerAnim +1
	if timerAnim >= 0  && timerAnim <= 4  {draw_sprite_general(spr_player,0 , 32,64, 30,32, (tempX+((tempSigXdash/6)*1)),(tempY-((tempSigYdash/6)*1)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.2}
	if timerAnim >= 1  && timerAnim <= 6  {draw_sprite_general(spr_player,0 , 32,64, 30,32, (tempX+((tempSigXdash/6)*2)),(tempY-((tempSigYdash/6)*2)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.3}
	if timerAnim >= 2  && timerAnim <= 8  {draw_sprite_general(spr_player,0 , 32,64, 30,32, (tempX+((tempSigXdash/6)*3)),(tempY-((tempSigYdash/6)*3)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.4}
	if timerAnim >= 3  && timerAnim <= 10 {draw_sprite_general(spr_player,0 , 32,64, 30,32, (tempX+((tempSigXdash/6)*4)),(tempY-((tempSigYdash/6)*4)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.5}
	if timerAnim >= 4  && timerAnim <= 12 {draw_sprite_general(spr_player,0 , 32,64, 30,32, (tempX+((tempSigXdash/6)*5)),(tempY-((tempSigYdash/6)*5)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.6}
	if timerAnim >= 5  && timerAnim <= 14 {draw_sprite_general(spr_player,0 , 32,64, 30,32, (tempX+((tempSigXdash/6)*6)),(tempY-((tempSigYdash/6)*6)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.7}
	if timerAnim >= 14 {timerAnim = 0; animDashDerechaArriba = false}	
}
if animDashArribaIzquierda == true {
	timerAnim = timerAnim +1
	if timerAnim >= 0  && timerAnim <= 4  {draw_sprite_general(spr_player,0 , 32,32, 30,32, (tempX-((tempSigXdash/6)*1)),(tempY-((tempSigYdash/6)*1)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.2}
	if timerAnim >= 1  && timerAnim <= 6  {draw_sprite_general(spr_player,0 , 32,32, 30,32, (tempX-((tempSigXdash/6)*2)),(tempY-((tempSigYdash/6)*2)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.3}
	if timerAnim >= 2  && timerAnim <= 8  {draw_sprite_general(spr_player,0 , 32,32, 30,32, (tempX-((tempSigXdash/6)*3)),(tempY-((tempSigYdash/6)*3)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.4}
	if timerAnim >= 3  && timerAnim <= 10 {draw_sprite_general(spr_player,0 , 32,32, 30,32, (tempX-((tempSigXdash/6)*4)),(tempY-((tempSigYdash/6)*4)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.5}
	if timerAnim >= 4  && timerAnim <= 12 {draw_sprite_general(spr_player,0 , 32,32, 30,32, (tempX-((tempSigXdash/6)*5)),(tempY-((tempSigYdash/6)*5)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.6}
	if timerAnim >= 5  && timerAnim <= 14 {draw_sprite_general(spr_player,0 , 32,32, 30,32, (tempX-((tempSigXdash/6)*6)),(tempY-((tempSigYdash/6)*6)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.7}
	if timerAnim >= 14 {timerAnim = 0; animDashArribaIzquierda = false}	
}
if animDashIzquierdaAbajo == true {
	timerAnim = timerAnim +1
	if timerAnim >= 0  && timerAnim <= 4  {draw_sprite_general(spr_player,0 , 32,32, 30,32, (tempX-((tempSigXdash/6)*1)),(tempY+((tempSigYdash/6)*1)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.2}
	if timerAnim >= 1  && timerAnim <= 6  {draw_sprite_general(spr_player,0 , 32,32, 30,32, (tempX-((tempSigXdash/6)*2)),(tempY+((tempSigYdash/6)*2)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.3}
	if timerAnim >= 2  && timerAnim <= 8  {draw_sprite_general(spr_player,0 , 32,32, 30,32, (tempX-((tempSigXdash/6)*3)),(tempY+((tempSigYdash/6)*3)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.4}
	if timerAnim >= 3  && timerAnim <= 10 {draw_sprite_general(spr_player,0 , 32,32, 30,32, (tempX-((tempSigXdash/6)*4)),(tempY+((tempSigYdash/6)*4)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.5}
	if timerAnim >= 4  && timerAnim <= 12 {draw_sprite_general(spr_player,0 , 32,32, 30,32, (tempX-((tempSigXdash/6)*5)),(tempY+((tempSigYdash/6)*5)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.6}
	if timerAnim >= 5  && timerAnim <= 14 {draw_sprite_general(spr_player,0 , 32,32, 30,32, (tempX-((tempSigXdash/6)*6)),(tempY+((tempSigYdash/6)*6)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.7}
	if timerAnim >= 14 {timerAnim = 0; animDashIzquierdaAbajo = false}	
}
if animDashAbajoDerecha == true {
	timerAnim = timerAnim +1
	if timerAnim >= 0  && timerAnim <= 4  {draw_sprite_general(spr_player,0 , 32,64, 30,32, (tempX+((tempSigXdash/6)*1)),(tempY+((tempSigYdash/6)*1)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.2}
	if timerAnim >= 1  && timerAnim <= 6  {draw_sprite_general(spr_player,0 , 32,64, 30,32, (tempX+((tempSigXdash/6)*2)),(tempY+((tempSigYdash/6)*2)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.3}
	if timerAnim >= 2  && timerAnim <= 8  {draw_sprite_general(spr_player,0 , 32,64, 30,32, (tempX+((tempSigXdash/6)*3)),(tempY+((tempSigYdash/6)*3)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.4}
	if timerAnim >= 3  && timerAnim <= 10 {draw_sprite_general(spr_player,0 , 32,64, 30,32, (tempX+((tempSigXdash/6)*4)),(tempY+((tempSigYdash/6)*4)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.5}
	if timerAnim >= 4  && timerAnim <= 12 {draw_sprite_general(spr_player,0 , 32,64, 30,32, (tempX+((tempSigXdash/6)*5)),(tempY+((tempSigYdash/6)*5)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.6}
	if timerAnim >= 5  && timerAnim <= 14 {draw_sprite_general(spr_player,0 , 32,64, 30,32, (tempX+((tempSigXdash/6)*6)),(tempY+((tempSigYdash/6)*6)) ,0.5,0.5,0,noC,noC,noC,noC,alphaTemp); alphaTemp = 0.7}
	if timerAnim >= 14 {timerAnim = 0; animDashAbajoDerecha = false}	
}























