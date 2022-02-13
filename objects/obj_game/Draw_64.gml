// well this code is a lot better than the GMS2 generated GML that's for sure
// and didn't even use any Bitwise Operators

switch (room)
{
case rm_game:
    draw_text(20, 20, "SCORE: " + string(score));
    draw_text(20, 40, "LIVES: " + string(lives));
    break;

case rm_start:
/*
	Note that we use the "@" to prefix the string we are wanting to draw, 
	and we have the string split over multiple lines. Using "@" like this 
	tells GameMaker Studio 2 that you are defining a string literal, which 
	means that the string will be drawn with line breaks and other special 
	characters, without the need for escape characters
*/
	    draw_set_halign(fa_center);
		var c = c_yellow;
		draw_text_transformed_colour(room_width / 2, 100, "SPACE ROCKS", 3, 3, 0, c, c, c, c, 1);
		
		draw_text(room_width / 2, 200, 
		// @ is essentially the GML version of the "pre" tag in HTML
@"Score 1,000 points to win!

UP: move
LEFT/RIGHT: change direction
SPACE: shoot
>>PRESS ENTER TO START<<");		
	    draw_set_halign(fa_left);

    break;

case rm_win:
	    draw_set_halign(fa_center);
	    var c = c_lime;
	    draw_text_transformed_colour(room_width / 2, 200, "YOU WON!", 3, 3, 0, c, c, c, c, 1);
	    draw_text(room_width / 2, 300, "PRESS ENTER TO RESTART");
	    draw_set_halign(fa_left);
    break;

case rm_gameover:
	    draw_set_halign(fa_center);
	    var c = c_red;
	    draw_text_transformed_colour(room_width / 2, 150, "GAME OVER", 3, 3, 0, c, c, c, c, 1);
	    draw_text(room_width / 2, 250, "FINAL SCORE: " + string(score));
	    draw_text(room_width / 2, 300, "PRESS ENTER TO RESTART");
	    draw_set_halign(fa_left);
    break;
}















// this'll be fun

// I think it's just not just a swtich against regular reserved value "room" 
// because we want to use a "temp" variable via the var keyword
// I'll use something have useful instead of a seemingly random string of characters


/*****
	iGameScore = 0;
	iGameLives = 5;
*****/



/******************  this is my ill-fated attempt at leaving the GMS2-generated code in
I'm instead just going to use the written tutorial code
https://www.yoyogames.com/en/tutorials/space-rocks-gml#

******************/

/******************

var room_state = room;

switch (room_state) {
	// switch statement deciding what to do based on which room
				case rm_game:
				// seems to verify the variable exists for score. from what i can gather
				//drawing the instance of score
				if(!variable_instance_exists(id, "iGameScore")) {
					iGameScore = 0;
				}
				draw_text(20,20, string("Score: ") + string(iGameScore) );
		
				//drawing the instance of lives
				var retrieveSpriteWidth = sprite_get_width(spr_lives); // replaced l4FCD61C2_0 
				var tempValTracker = 0; // not actually sure how to describe this - l4FCD61C2_1
		
				if(!variable_instance_exists(id, "__dnd_lives")) {
					iGameLives = 0;
				}
		
				for ( var i = iGameLives; i > 0; --i ) { // i seems better than l4FCD61C2_2 string
					draw_sprite( spr_lives, 0, 20 + tempValTracker, 40 );
					tempValTracker += retrieveSpriteWidth;
				}
				break;
				
				case rm_start: // in the case of the start room
				
				draw_set_halign(fa_center);
				draw_set_valign(fa_top);
				******************/
				
				// color
				//draw_set_color( c_yellow ); // writing 'c_yellow' instead of $ff00ffff, why not?
				/*		in DND the "use alpha" box is checked and set to true
						in the code generated it says
						I think it's a bitwise operation?
						perhaps I'll just copy it
						maybe i have to use the FFF value for yellow for this work, not sure
						
						var l35CBC932_0=($FFFFFFFF >> 24);
						draw_set_alpha(l35CBC932_0 / $ff);
				*/
				// okay i'll just paste it in. new var name though
				/******************
				draw_set_colour($FF00FFFF & $ffffff);
				var iBitWiseStore=($FF00FFFF >> 24);
				draw_set_alpha(iBitWiseStore / $ff);
				
				// Draw Transformed Value
				draw_text_transformed(250, 100, string("SPACE ROCKS") + "", 3, 3, 0);
				
				// Set Draw Colour
				draw_set_colour($FFFFFFFF & $ffffff);
				var l35CBC932_0=($FFFFFFFF >> 24);
				draw_set_alpha(l35CBC932_0 / $ff);
				
				// Draw Value
				draw_text(250, 200, string("Score 1,000 points to win!") + "");
	
				// Draw Value
				draw_text(250, 230, string("Control with UP/lEFT/RIGHT keys") + "");
	
				// Draw Value
				draw_text(250, 260, string("Press SPACE to shoot") + "");
	
				// Set Draw Colour
				draw_set_colour($FF00FFFF & $ffffff);
				var l359F5EC6_0=($FF00FFFF >> 24);
				draw_set_alpha(l359F5EC6_0 / $ff);
	
				// Draw Value
				draw_text(250, 350, string(">> PRESS ENTER TO START <<") + "");
	
				// Set Text Alignment
				draw_set_halign(fa_left);
				draw_set_valign(fa_top);
	
				// Set Draw Colour
				draw_set_colour($FFFFFFFF & $ffffff);
				var l4B7C54E7_0=($FFFFFFFF >> 24);
				draw_set_alpha(l4B7C54E7_0 / $ff);
				
				break;
		
		
			case rm_gameover:
		
		
			// Set Text Alignment
			draw_set_halign(fa_center);
			draw_set_valign(fa_top);
	
			// Set Draw Colour
			draw_set_colour($FF0000FF & $ffffff);
			var l4554B1AE_0=($FF0000FF >> 24);
			draw_set_alpha(l4554B1AE_0 / $ff);
	
			// Draw Transformed Value
			draw_text_transformed(250, 150, string("YOU LOSE") + "", 3, 3, 0);
	
			// Set Draw Colour
			draw_set_colour($FFFFFFFF & $ffffff);
			var l5FDDAD90_0=($FFFFFFFF >> 24);
			draw_set_alpha(l5FDDAD90_0 / $ff);
	
			// Draw Instance Score
			if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
			draw_text(250, 250, string("FINAL SCORE: ") + string(__dnd_score));
	
			// Draw Value
			draw_text(250, 300, string(">> PRESS ENTER TO RESTART <<") + "");
	
			// Set Text Alignment
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			break;

			// Case
		
			case rm_win:
		
			// Set Text Alignment
			draw_set_halign(fa_center);
			draw_set_valign(fa_top);
	
			// Set Draw Colour
			draw_set_colour($FF00FF00 & $ffffff);
			var l4A8B5355_0=($FF00FF00 >> 24);
			draw_set_alpha(l4A8B5355_0 / $ff);
	
			// Draw Transformed Value
			draw_text_transformed(250, 150, string("YOU WIN") + "", 3, 3, 0);
	
			// Set Draw Colour
			draw_set_colour($FFFFFFFF & $ffffff);
			var l78D1B961_0=($FFFFFFFF >> 24);
			draw_set_alpha(l78D1B961_0 / $ff);
	
			// Draw Instance Score
			if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
			draw_text(250, 250, string("FINAL SCORE: ") + string(__dnd_score));
	
			// Draw Value
			draw_text(250, 300, string(">> PRESS ENTER TO RESTART <<") + "");
	
			// Set Text Alignment
			draw_set_halign(fa_left);
			draw_set_valign(fa_top);
			break;
}




******************/


























