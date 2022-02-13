///@description function spawn_off_camera
///@param {index} obj
///@param {int} number

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

//var obj = argument0;
//var num = argument1;


function spawn_off_camera( obj, num){
	var xx, yy;

	var pad = 64;	
	repeat( num ){
		while ( point_in_rectangle(xx,yy,global.cameraX - pad,global.cameraY - pad,
		global.cameraX+global.cameraWidth+pad, global.cameraY+global.cameraHeight+pad) ) {
	
				xx = random_range(0, room_width);
				yy = random_range(0, room_height);

		}

		instance_create_layer(xx,yy,"Instances",obj);
	}
}

/*
function spawn_off_camera(){
	
	
	
}

*/