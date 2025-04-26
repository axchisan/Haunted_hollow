global.room1_open_count = 0;

if (!variable_global_exists("vida_maxima")) {
    global.vida_maxima = 7; 
}


if (!variable_global_exists("vida_actual")) {
    global.vida_actual = global.vida_maxima;
}

audio_stop_all();
audio_play_sound(jefemusic, 1, true);


