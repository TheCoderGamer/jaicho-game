
//-------------------------GUARDADO DE MONEDAS---------------------

if room == rm_main {

//Si sales de la habitacion y no hay el mismo numero de monedas que al inicio, guarda las monedas en ds_monedas

	numerodeMonedas2 = instance_number(obj_moneda)					//Contar el nº de monedas en la sala
	if !(numerodeMonedas2 == numerodeMonedas) {							//Si no hay las mismas monedas que al inicio de la sala, ejecutar
		
		ds_grid_clear(ds_monedas, -1)
		ds_grid_resize(ds_monedas, ds_grid_width(ds_monedas), numerodeMonedas2)

		var cont1 = 0
	
		repeat (numerodeMonedas2) {	   
		   var inst = instance_find(obj_moneda,cont1)		//Declarar en inst el ID de cada moneda
		   if inst > 0 {
			   ds_grid_add(ds_monedas, 0, cont1, inst)		//Añadir IDs de cada moneda
			   ds_grid_add(ds_monedas, 1, cont1, inst.x)	//Añadir x de cada moneda
			   ds_grid_add(ds_monedas, 2, cont1, inst.y)	//Añadir y de cada moneda
			   cont1++
			}
		}
	}
} 

if room == rm_main {
	var cont3 = 0
	var inst2
	var cont4 = 0
	numerodeCofres = instance_number(obj_cofre1)
	repeat numerodeCofres {
		inst2 = instance_find(obj_cofre1,cont3)
		if inst2.cofreOpen == true {
			ds_grid_resize(ds_cofres,ds_grid_width(ds_cofres), cont4+1)
			ds_cofres[# 0, cont4] = inst2
			cont4++
		}
		cont3++
	}
}























/*
		ds_grid_resize(ds_moneda_data, ds_grid_width(ds_moneda_data), inst_num)		//Redimensionar con el numero de monedas actual
		
		var gw = ds_grid_width(ds_moneda_data)
		var gh = ds_monedas
		var cont1 = 0
		
		var xx = 0
		repeat(gw) {
			var yy = 0
			repeat(gh) {
				var inst = ds_monedas[# xx,yy]			//Guardar en datos el dato que corresponda de la tabla
				
				ds_moneda_data[# 0, cont1] = inst
				ds_moneda_data[# 1, cont1] = inst.x
				ds_moneda_data[# 2, cont1] = inst.y
				cont1++
				yy++
			}	
			xx++