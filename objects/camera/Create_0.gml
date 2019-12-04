//DISPLAY & CAMERAS
view_width =  1920 / 4 //resolucion juego
view_height = 1080 / 4 
window_scale = 2	   //tamaño ventana

window_set_size(view_width * window_scale, view_height * window_scale)
alarm[0] = 1
surface_resize(application_surface, view_width*window_scale, view_height*window_scale)