//Cogida
if pickUp = true {
	tempo1 += 1;
	if tempo1 == 1 {alarm[0] = 1} //Sonido
	y = y - 2
	if tempo1 == 10 {instance_destroy(); tempo1 = 0; pickUp = false;} //Destruir
}


