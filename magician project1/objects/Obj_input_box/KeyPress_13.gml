var portal = instance_nearest(x, y, Obj_pentagrama);

if (portal != noone) {
    if (input_password == portal.correct_password) {
		audio_stop_all();
		audio_play_sound(Teleport, 2, false);
        show_message("Contraseña correcta! Teletransportando...");
        room_goto(cinejefe);
        instance_destroy(); 
    } else {
        global.game_over = true;
        show_message("game over");
        scrGamereset();
    }
}
