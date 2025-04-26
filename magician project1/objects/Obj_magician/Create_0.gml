
global.game_over = false;
if (!variable_global_exists("room1_open_count")) {
    global.room1_open_count = 0;
}




scrInitializePlayer();
state = STATE_IDLE;
