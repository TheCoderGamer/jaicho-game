if activada == false {draw_sprite(spr_palanca,0,x,y)}

if place_meeting(x,y, obj_player) {
	inArea = true
	//Dibujar Z animada tutorial
	if tutorialMode == true {
		temp1 = temp1 +1
		if temp1 >= 0  && temp1 < 30 {
			draw_sprite_general(spr_key_Z,0,0,0,32,27, posXbotTut, posYbotTut-1, 0.5, 0.5,0,c_white,c_white,c_white,c_white,1)}
		
		if temp1 >= 30 && temp1 <= 60 {
			draw_sprite_general(spr_key_Z,1,0,0,32,27, posXbotTut, posYbotTut, 0.5, 0.5,0,c_white,c_white,c_white,c_white,1)}
		
		if temp1 >= 60 {temp1 = 0}
	}
}
