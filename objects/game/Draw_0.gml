//Al pulsar L mostrar las colisiones
if keyboard_check(ord("L")) && tempo1segs > 1000000 {
		if debugMode == false {debugMode = true; tempo1segs = 0}
		else if debugMode == true {debugMode = false; tempo1segs = 0}
	}
	
if debugMode == true
{
	with obj_colision
		{draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true)}
	with obj_player
		{draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true)}
	with obj_NPC
		{draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true)}
	with obj_spikes
		{draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true)}
	with obj_transition
		{draw_rectangle_color(bbox_left, bbox_top, bbox_right, bbox_bottom, c_yellow, c_yellow, c_yellow, c_yellow, true)}
}	
	
	