
if (room == rm_game) {
	
		if ( audio_is_playing(msc_song) ) {
			audio_stop_sound(msc_song);
		}

	audio_play_sound(msc_song, 2, true);

	repeat(6) {
		// as the tutorial says 
		// "This gives the player the best possible starting circumstances as there will be no asteroids created near them. "
		//https://www.yoyogames.com/en/tutorials/space-rocks-gml
	    var xx = choose(irandom_range(0, room_width * 0.3), irandom_range(room_width * 0.7, room_width));
	    var yy = choose(irandom_range(0, room_height * 0.3), irandom_range(room_height * 0.7, room_height));
	    instance_create_layer(xx, yy, "Instances", obj_asteroid);
	    }
	// note: outside the repeat 6 loop, inside the "if room is game room" loop
	alarm[0] = 60;
}



// GameMaker Language Preview (Read-Only)
// update: commenting this out but  keeping it for reference for no particular reason
// If Variable





/************************************************
if(room == rm_game)
{
	// If Audio Is Playing
	var l54CD2F43_0 = msc_song;
	if (audio_is_playing(l54CD2F43_0))
	{
		// Stop Audio
		audio_stop_sound(msc_song);
	}

	// Play Audio
	audio_play_sound(msc_song, 0, 1);

	// Set Alarm Countdown
	alarm_set(0, 60);

	// Repeat
	repeat(6)
	{
		// Choose
		var choice = choose(0, 1);
	
		// If Variable
		if(choice == 0)
		{
			// Get Random Number
			xx = floor(random_range(0, room_width*0.3 + 1));
		}
	
		// Else
		else
		{
			// Get Random Number
			xx = floor(random_range(room_width*.07, room_width + 1));
		}
	
		// Choose
		var choice = choose(0, 1);
	
		// If Variable
		if(choice == 0)
		{
			// Get Random Number
			yy = floor(random_range(0, room_height*0.3 + 1));
		}
	
		// Else
		else
		{
			// Get Random Number
			xx = floor(random_range(room_height*0.7, room_height + 1));
		}
	
		// Create Instance
		instance_create_layer(xx, yy, "Instances", obj_asteroid);
	}
}

***************************/