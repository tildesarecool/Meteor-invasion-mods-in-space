/***

There is one problem with this event, however... Because the object "obj_game" is 
persistent and the alarm is always reset, we would end up with asteroids in rooms 
other than the game room, since the alarm will be running even after the player has won 
or lost. To avoid this, add this code at the start of the code block, before the code given 
above

***/

if (room != rm_game) {
	exit;
}


/**
To set the alarm we have used the room_speed global variable. This variable holds the 
number of steps the room will perform in a second (the game speed), which is what we set 
right at the start of this tutorial: 60FPS. So, by setting the alarm to 4 * room_speed we 
are setting it to trigger again in 4 seconds.

**/
spawn_off_camera(obj_asteroid,1);
alarm[0] = 1 * room_speed;

/******************************************
if (choose(0,1) == 0) {
		var xx = choose(0, room_width);
		var yy = irandom_range(0, room_height);
	}
	else {
		var xx = irandom_range(0, room_width);
		var yy = choose(0, room_height);
}

instance_create_layer(xx, yy, "instances", obj_asteroid);

*********************************************/

/***************
if (room != rm_game) {
	exit;
}

alarm_set(0, room_speed * 4 );

choice = choose(0, 1);

if ( choice == 0 ) {
	
	var xx = choose(room_width, 0);
	
	var yy = floor(random_range(0, room_height + 1 ));
} else {
	
	var yy = choose( room_height, 0 );
	
	var xx = floor( random_range(0, room_width + 1 ) );
}

instance_create_layer( xx, yy, "Instances", obj_asteroid );


*********************/