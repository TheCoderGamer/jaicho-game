//TRANSICIONES
if spawnRoom == -1 {exit;}
obj_player.x = spawnX
obj_player.y = spawnY
obj_player.facing = spawnPlayerFacing

camera_set_view_pos(viewCamID, cameraSpawnX, cameraSpawnY)


