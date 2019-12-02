if place_meeting(x,y,obj_player) {
	sprite_index = 0
	if timer1 < 7000000 + 5000 {timer1 += delta_time;} else{timer1 = 7000000;} //evitar variable con numeros muy grandes
	if timer1 > 100000 {sprite_index = 1}
	if timer1 > 1000000 {sprite_index = 2}
	if timer1 > 3000000 {sprite_index = 3}
	if timer1 > 5000000 {sprite_index = 0}
}
else {image_index = 0}