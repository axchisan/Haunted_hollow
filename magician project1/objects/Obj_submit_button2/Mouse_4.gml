
if (!variable_global_exists("answered_questions")) {
    global.answered_questions = ds_list_create();
}


var option_selected = false;


var option_false_selected = false;


var selected_count = 0;


var current_question_id = 2; 


if (ds_list_find_index(global.answered_questions, current_question_id) != -1) {
    show_message("This question has already been answered correctly.");
    room_goto(Room1); // 
} else {
    // Comprobar todas las opciones falsas
    with (Obj_checkbox_false2) {
        if (sprite_index == Spr_checkbox_frame_selected) {
            option_false_selected = true;
            option_selected = true;
            selected_count += 1;
        }
    }

    // Comprobar todas las opciones verdaderas
    with (Obj_checkbox_true2) {
        if (sprite_index == Spr_checkbox_frame_selected) {
            option_selected = true;
            selected_count += 1;
        }
    }


    if (option_selected) {
        if (selected_count > 1) {
            show_message("Please select only one option.");
        } else {
            if (option_false_selected) {
                // Si una opción falsa está seleccionada, bajar la vida en 3 puntos
                global.vida_actual -= 3;

                // Asegurarse de que la vida no sea menor que 0
                if (global.vida_actual < 0) {
                    global.vida_actual = 0;
                }
                show_message("Incorrect answer.");
				
            } else {
                ds_list_add(global.answered_questions, current_question_id);
				global.npcdespawn2 = true;
                show_message("Correct answer: the second digit is 3.");
				audio_play_sound(correctanswer, 2, false);
                room_goto(Room1); // Cambiar de habitación solo si la respuesta es correcta
            }
        }
    } else {
        // Si ninguna opción está seleccionada, mostrar un mensaje
        show_message("Please select an option.");
    }
}
