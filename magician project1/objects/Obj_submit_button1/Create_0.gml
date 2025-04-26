if (!variable_global_exists("answered_questions")) {
    global.answered_questions = ds_list_create();
}

image_index = 0;
image_speed = 0;