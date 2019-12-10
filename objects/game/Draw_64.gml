//EFCTO TRANSICIONES
if roomTransition == true {
	if room != spawnRoom{
			blackAlpha += 0.1
			if blackAlpha >= 1{room_goto(spawnRoom)}
	}
	else {
			blackAlpha -= 0.1
			if blackAlpha <= 0 {roomTransition = false}
		}		
	draw_set_alpha(blackAlpha)
	draw_rectangle_color(0,0,GUIwidth,GUIheight,c_black,c_black,c_black,c_black,false)
	draw_set_alpha(1)
}

draw_text(200, 5, "Monedas " + strMonedas)