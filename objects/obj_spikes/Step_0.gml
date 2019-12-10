if activateSpike == true {
	image_index = 2
	outOfSpikes = false
	timer1 = timer1 +1
	if timer1 >= 1 && timer1 < 2 {audio_play_sound(sn_spikeTrap,2,false); vida = vida-1}
	if timer1 >= 2 && timer1 < 30 {image_index = 3}
	if timer1 >= 30 && timer1 < 40 {image_index = 2}
	if timer1 >= 40 && timer1 < 50 {image_index = 1}
	if timer1 >= 50 && timer1 < 80 {image_index = 0}
	if timer1 >= 80 {timer1 = 0; timer2 = 0}
}
else if (outOfSpikes == false){
	timer2 = timer2 +1
	if timer2 >= 2 && timer2 < 6 {image_index = 2}
	if timer2 >= 6 && timer2 < 10 {image_index = 1}
	if timer2 >= 10 && timer2 < 14{image_index = 0}
	if timer2 >= 14 && timer2 < 22 {timer2 = 0; outOfSpikes = true}
	if timer2 >= 22 {timer2 = 0; timer1 = 0}
}
else {image_index = 0}