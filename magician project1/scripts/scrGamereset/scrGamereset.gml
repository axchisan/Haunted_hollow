function scrGamereset() {
    global.game_over = false;
    global.room1_open_count = 0;
    global.vida_actual = 7;


    if (!variable_global_exists("answered_questions")) {
        global.answered_questions = ds_list_create(); 
    } else {
       
        ds_list_clear(global.answered_questions);
    }

    
    if (global.answered_questions != undefined) {
       
        if (room == jefe) {
            show_message("you are not immortal and you know it...");
            room_goto(jefe);
        } else {
            
            global.game_resetting = true;
            show_message("Restarting game.");
            game_restart();
        }
    } else {
        show_message("Error al reiniciar el juego. Variable global answered_questions no inicializada.");
    }
}
