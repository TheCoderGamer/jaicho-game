//TRANSICIONES
if !(spawnRoom == -1) {
	obj_player.x = spawnX
	obj_player.y = spawnY
	obj_player.facing = spawnPlayerFacing

	camera_set_view_pos(viewCamID, cameraSpawnX, cameraSpawnY)
}




//----------------------------------GUARDADO DE MONEDAS------------------------

if room == rm_main {
	
	numerodeMonedas = instance_number(obj_moneda)	//Numero de monedas en la sala
	
	if !(spawnRoom == -1) {
		pausarAntilag = true
		if !(numerodeMonedas2 == numerodeMonedas) {
			with(obj_moneda) {
				instance_destroy()	
			}
			var cont2 = 0
			repeat(numerodeMonedas2) {
					
				var xx = ds_monedas[# 1, cont2]
				var yy = ds_monedas[# 2, cont2]
					
				instance_create_layer(xx,yy,"ObjetosInst",obj_moneda)
					
				cont2++		
			}
		pausarAntilag = false
		}			
	}
}









//if !(spawnRoom == -1) && room == rm_main {
	var inst2
	var cont3 = 0
	numerodeCofres2 = instance_number(obj_cofre1)
	repeat numerodeCofres2 {
		inst2 = ds_cofres[# 0,cont3]
		if !is_undefined(inst2){
			with inst2 {cofreOpen = true}	
			cont3++
		}
	}
//}




