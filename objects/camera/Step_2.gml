#macro viewCamID view_camera[0] //macro para nombrar mas facilmente

camera_set_view_size(viewCamID, view_width, view_height) //tamaño de camara

if instance_exists(obj_player){
	var xPosCenterCamera = clamp(obj_player.x - view_width/2, 0, room_width - view_width)     //Evitar que la camara salga de la room
	var yPosCenterCamera = clamp(obj_player.y - view_height/2, 0, room_height - view_height)  //y ajustar la posicion adecuada
	
	var xPosActualCamera = camera_get_view_x(viewCamID)
	var yPosActualCamera = camera_get_view_y(viewCamID)
	var cameraSpeed = .1
	
	camera_set_view_pos(viewCamID, lerp(xPosActualCamera, xPosCenterCamera, cameraSpeed), 
								   lerp(yPosActualCamera, yPosCenterCamera, cameraSpeed)) //Mover camara
}

