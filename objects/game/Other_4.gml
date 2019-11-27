if spawnRoom == -1 {exit;}
obj_player.x = spawnX
obj_player.y = spawnY
obj_player.facing = spawnPlayerFacing

with obj_player {
		switch(facing)
		{
		case 0: sprite_index = spr_player_right; break;  //derecha
		case 90: sprite_index = spr_player_up; break;    //arriba
		case 180: sprite_index = spr_player_left; break; //izquierda
		case 270: sprite_index = spr_player_down; break; //abajo
		}	
}