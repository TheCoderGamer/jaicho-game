//VARIABLES NECESARIAS

roomgoto = rm_main				//Sala a la que ir
spawnX = 1807					//Pos X del jugador en la otra sala
spawnY = 115					//Pos Y ...
playerFacingAfter = dir.down	//Direccion a la que mira para entrar
playerFacingBefore = dir.down   //Direccion a la que mira al salir

//MOVER CAMARA CON JUGADOR
cameraSpawnX = spawnX - (camera.view_width/2)
cameraSpawnY = spawnY - (camera.view_height/2)