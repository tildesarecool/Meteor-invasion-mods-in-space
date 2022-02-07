// GameMaker Language Preview (Read-Only)
// started as l432DED76_0
// Switch
//var chooseRoom = room;
switch(room) {
	// Case
	case rm_start:
		// Go To Room
		room_goto(rm_game);
		break;

	// Case
	case rm_gameover:
		// Restart Game
		game_restart();
		break;

	// Case
	case rm_win:
		// Restart Game
		game_restart();
		break;
}