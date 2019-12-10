//-----------------TUTORIAL-------------------
//Dibujar Z animada tutorial
if place_meeting(x,y, obj_player) && tutorialMode == true {
	timerCofre = timerCofre +1
	if timerCofre >= 0  && timerCofre < 30 {
		draw_sprite_general(spr_key_Z,0,0,0,32,27, posXbotTut, posYbotTut-1, 0.5, 0.5,0,c_white,c_white,c_white,c_white,1)}
		
	if timerCofre >= 30 && timerCofre <= 60 {
		draw_sprite_general(spr_key_Z,1,0,0,32,27, posXbotTut, posYbotTut, 0.5, 0.5,0,c_white,c_white,c_white,c_white,1)}
		
	if timerCofre >= 60 {timerCofre = 0}
}

//------------------APERTURA-------------------
if opening == true {
	timer2Cofre = timer2Cofre +1
	tutorialMode = false
	
	if tipoCofre = 0 && cofreOpen == false  {						//--------------Tipo 0 Animacion----------
		if timer2Cofre >= 0  && timer2Cofre < 30 {draw_sprite(spr_cofre,1,x,y)}
		if timer2Cofre >= 30 && timer2Cofre < 90 {draw_sprite(spr_cofre,2,x,y)}
		if timer2Cofre >= 90 && timer2Cofre <= 200 {draw_text(x+15,y+10,"VACIO"); draw_sprite(spr_cofre,2,x,y)}
		if timer2Cofre >= 200 {cofreOpen = true; timer2Cofre = 0;}	
	}

	if tipoCofre = 1 && cofreOpen == false {						//--------------Tipo 1 Animacion----------
		if timer2Cofre >= 0  && timer2Cofre < 30 {draw_sprite(spr_cofre,3,x,y)}
		if timer2Cofre >= 30 && timer2Cofre < 90 {draw_sprite(spr_cofre,4,x,y)}
		if timer2Cofre >= 90 && timer2Cofre <= 200 {draw_text(x+15,y+10,"100 MONEDAS MAS !!"); draw_sprite(spr_cofre,4,x,y)}
		if timer2Cofre >= 200 {cofreOpen = true; timer2Cofre = 0; monedas = monedas +100}	
		
	}

	if tipoCofre = 2 && cofreOpen == false {						//--------------Tipo 2 Animacion-----------
		
		
	}	
}


if cofreOpen == true && tipoCofre == 0 {draw_sprite(spr_cofre,2,x,y)}
if cofreOpen == true && tipoCofre == 1 {draw_sprite(spr_cofre,4,x,y)}
