/// @description Inserte aquí la descripción
//FullScreen
tempo1segs = tempo1segs +1
if keyboard_check(vk_f4) {
	if tempo1segs >= 60 {
		if window_get_fullscreen() {window_set_fullscreen(false); tempo1segs = 0;}
		else {window_set_fullscreen(true); tempo1segs = 0;}
		}
   }

//Reiniciar al pulsar P
if keyboard_check(ord("P")) {game_restart();}

//Pantalla titulo (config)
if firstSetUpDone = false {
	tempo4segs++
	if tempo4segs >= 120 {
		room_goto_next()
		firstSetUpDone = true
		tempo4segs = 0
	}
}


strMonedas = string(monedas)



//Desactivar objetos que esten fuera de la vista --------- ANTILAG -----------
if pausarAntilag == false {

	instance_deactivate_all(true)
	var cam, cleft, ctop, cw, ch
	cam = viewCamID
	cleft = camera_get_view_x(cam)
	ctop = camera_get_view_y(cam)
	cw = cwtemp
	ch = chtemp

	instance_activate_region(cleft-1, ctop-1, cw+3, ch+3, true)

	//ACTIVAR OBJETOS IMPORTANTES
	instance_activate_object(game)
	instance_activate_object(camera)
	instance_activate_object(obj_corazonVida)
	instance_activate_object(parent_depht)
	instance_activate_object(depht_manager)

}


