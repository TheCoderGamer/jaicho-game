if place_meeting(x,y,obj_player) {
	image_index = 2
	outOfSpikes = false
	if timer1 < 4000000 + 5000 {timer1 += delta_time;} else{timer1 = 4000000;} //evitar overflow
	if timer1 > 10000 {image_index = 3}
	if timer1 > 1000000 {image_index = 2}
	if timer1 > 1100000 {image_index = 1}
	if timer1 > 1200000 {image_index = 0}
	if timer1 > 2000000 {timer1 = 0}
}
else if (outOfSpikes == false){
	image_index = 2
	if timer2 < 4000000 + 5000 {timer2 += delta_time;} else{timer2 = 4000000;} //evitar overflow
	if timer2 > 10000 {image_index = 1}
	if timer2 > 200000 {image_index = 0}
	if timer2 > 400000 {timer2 = 0; outOfSpikes = true}
}
else {image_index = 0}