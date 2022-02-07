if room == rm_game {
	if score >= 1000 {
		    audio_play_sound(snd_win, 1, false);
		    room_goto(rm_win);
	    }
	if lives <= 0 {
		    audio_play_sound(snd_lose, 1, false);
			room_goto(rm_gameover);
	    }
}