
function scrCheckPlayerDeath() {
    if (global.vida_actual <= 0) {
       
        global.game_over = true;
		audio_stop_all();
		audio_play_sound(game_over, 2, false);
		show_message("game over")
		scrGamereset()
       
    }
}
