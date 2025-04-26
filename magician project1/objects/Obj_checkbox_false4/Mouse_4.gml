// Evento Mouse Left Pressed en Obj_checkbox_false
if (sprite_index == Spr_checkbox_frame) {
    // Cambiar el sprite al de seleccionado
    sprite_index = Spr_checkbox_frame_selected;
} else if (sprite_index == Spr_checkbox_frame_selected) {
    // Cambiar de nuevo al sprite normal si ya está seleccionado
    sprite_index = Spr_checkbox_frame;
}

