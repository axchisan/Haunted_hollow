// Variable global para registrar preguntas respondidas correctamente
if (!variable_global_exists("answered_questions")) {
    global.answered_questions = ds_list_create();
}

// Bandera para verificar si alguna opción está seleccionada
var option_selected = false;

// Bandera para verificar si la opción seleccionada es falsa
var option_false_selected = false;

// Contador para verificar la cantidad de opciones seleccionadas
var selected_count = 0;

// Identificar la pregunta actual
var current_question_id = 6; 

// Comprobar si la pregunta ya ha sido respondida correctamente
if (ds_list_find_index(global.answered_questions, current_question_id) != -1) {
    show_message("This question has already been answered correctly.");
    room_goto(Room1); // Cerrar la habitación
} else {
    // Comprobar todas las opciones falsas
    with (Obj_checkbox_false6) {
        if (sprite_index == Spr_checkbox_frame_selected) {
            // Marcar que una opción falsa está seleccionada
            option_false_selected = true;
            option_selected = true;
            selected_count += 1;
        }
    }

    // Comprobar todas las opciones verdaderas
    with (Obj_checkbox_true6) {
        if (sprite_index == Spr_checkbox_frame_selected) {
            // Marcar que una opción verdadera está seleccionada
            option_selected = true;
            selected_count += 1;
        }
    }

    // Realizar las acciones después de verificar todas las opciones
    if (option_selected) {
        if (selected_count > 1) {
            // Si más de una opción está seleccionada, mostrar un mensaje
            show_message("Please select only one option.");
        } else {
            if (option_false_selected) {
                // Si una opción falsa está seleccionada, bajar la vida en 3 puntos
                global.vida_actual -= 3;

                // Asegurarse de que la vida no sea menor que 0
                if (global.vida_actual < 0) {
                    global.vida_actual = 0;
                }

                // Mostrar mensaje de respuesta incorrecta
                show_message("Incorrect answer.");
            } else {
                // Si la opción correcta está seleccionada, registrar la pregunta como respondida
                ds_list_add(global.answered_questions, current_question_id);
				global.npcdespawn6 = true;

                show_message("Correct answer: the sixth digit is 9.");
				audio_play_sound(correctanswer, 2, false);

                // Aquí puedes agregar lógica para dar una llave al jugador
                
                room_goto(Room1); // Cambiar de habitación solo si la respuesta es correcta
            }
        }
    } else {
        // Si ninguna opción está seleccionada, mostrar un mensaje
        show_message("Please select an option.");
    }
}
