global.npcdespawn1 = false;
global.npcdespawn2 = false;
global.npcdespawn3 = false;
global.npcdespawn4 = false;
global.npcdespawn5 = false;
global.npcdespawn6 = false;
audio_stop_all();
audio_play_sound(music1, 1, true);

persistent = true;


if (!variable_global_exists("vida_maxima")) {
    global.vida_maxima = 7; 
}

if (!variable_global_exists("vida_actual")) {
    global.vida_actual = global.vida_maxima;
}



display_set_gui_size(1366, 768);

global.TEXTBOX_FONT = font_add_sprite_ext(SprTextboxFont, "ABCDEFGHIJKLMNÑOPQRSTUVWXYZÁÉÍÓÚabcdefghijklmnñopqrstuvwxyzáéíóú0123456789¡!¿?()\"'.,-/ü|", true, 1);

