if (activateSpike == true) {
	if !place_meeting(x,y, obj_player) {activateSpike = false}
	outOfSpikes = false
	timer1 = timer1 +1
	if timer1 >= 1 && timer1 < 2 {audio_play_sound(sn_spikeTrap,2,false); vida = vida-1}
	if timer1 >= 2 && timer1 < 30 {image_index = 3}
	if timer1 >= 30 && timer1 < 40 {image_index = 2}
	if timer1 >= 40 && timer1 < 50 {image_index = 1}
	if timer1 >= 50 && timer1 < 80 {image_index = 0}
	if timer1 >= 80 {timer1 = 0; timer2 = 0; activateSpike = false}
}
else if (outOfSpikes == false && activateSpike == false){
	timer2 = timer2 +1
	if timer2 >= 2 && timer2 < 6 {image_index = 2}
	if timer2 >= 6 && timer2 < 10 {image_index = 1}
	if timer2 >= 10 && timer2 < 14{image_index = 0}
	if timer2 >= 14 {timer2 = 0; timer1 = 0; outOfSpikes = true; activateSpike = false}
}
else {image_index = 0}