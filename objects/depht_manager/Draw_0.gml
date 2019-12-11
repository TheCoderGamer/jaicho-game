//Redimensionar Grid
var dgrid = ds_depthgrid
var inst_num = instance_number(parent_depht)
ds_grid_resize(dgrid,2,inst_num)

//Añadir instancia info al grid
var cont1 = 0
with(parent_depht){
	dgrid[# 0,cont1] = id
	dgrid[# 1,cont1] = y
	cont1++
}

//Ordenar grid
ds_grid_sort(dgrid,1,true)

//Dibujar
var inst
cont1 = 0
repeat(inst_num){
	inst = dgrid[# 0,cont1]		//sacar ID	
	with(inst){
		event_perform(ev_draw,0)
		//event_perform(ev_draw_begin,0)
		//event_perform(ev_draw_end,0)
		//event_perform(ev_draw_post,0)
		//event_perform(ev_draw_pre,0)
	}
	cont1++
}