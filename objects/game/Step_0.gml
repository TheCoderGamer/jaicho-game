/// @description Inserte aquí la descripción
//FullScreen
if keyboard_check(vk_f4) {
	tempo1segs = tempo1segs +1
	if tempo1segs >= 60 {
		if window_get_fullscreen() {window_set_fullscreen(false); tempo1segs = 0;}
		else {window_set_fullscreen(true); tempo1segs = 0;}
		}
   }

//Reiniciar al pulsar P
if keyboard_check(ord("P")) {game_restart();}

//Pantalla titulo (config)
if firstSetUpDone = false {
	if tempo4segs < 2000000 + 5000 {tempo4segs += delta_time;} else{tempo4segs = 2000000;} //evitar overflow
	if tempo4segs >= 2000000 {
		room_goto_next()
		firstSetUpDone = true
	}
}


strMonedas = string(monedas)

//Desactivar objetos que esten fuera de la vista --------- ANTILAG -----------
instance_deactivate_all(true)
var cam, cleft, ctop, cw, ch
cam = viewCamID
cleft = camera_get_view_x(cam)
ctop = camera_get_view_y(cam)
cw = cwtemp
ch = chtemp

instance_activate_region(cleft, ctop, cw+5, ch+5, true)

instance_activate_layer("config")

