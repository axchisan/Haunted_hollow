if (room_get_name(room) == "Room_question1") {
    // Guardar el color y la fuente actuales
    var original_color = draw_get_color();
    var original_font = draw_get_font();

    // Establecer el nuevo color y la fuente
    draw_set_color(c_black);
    draw_set_font(fnt_medieval);

    // Posición inicial para el dibujo del texto
    var draw_x = 512;
    var draw_y = 190;
    var line_height = 26; 

    // Dibujar texto manualmente con saltos de línea
    draw_text(draw_x, draw_y, "Question 1 Verb To Be:");
    draw_text(draw_x, draw_y + line_height, "Choose the correct form of the verb");
    draw_text(draw_x, draw_y + 2 * line_height, "to be to complete the sentence:");
    draw_text(draw_x, draw_y + 3 * line_height, "She__ a teacher");
    draw_text(draw_x, draw_y + 4 * line_height, "");
    draw_text(draw_x, draw_y + 5 * line_height, "a) am");
    draw_text(draw_x, draw_y + 6 * line_height, "b) is");
    draw_text(draw_x, draw_y + 7 * line_height, "c) are");
   
    // Restaurar el color y la fuente originales
    draw_set_color(original_color);
    draw_set_font(original_font);
}
