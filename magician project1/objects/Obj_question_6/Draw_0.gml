// Evento Draw de Obj_question1
if (room_get_name(room) == "Room_question6") {
    // Guardar el color y la fuente actuales
    var original_color = draw_get_color();
    var original_font = draw_get_font();

    // Establecer color de dibujo
    draw_set_color(c_black);

    // Establecer la fuente (asegúrate de tener fnt_medieval importada y asignada correctamente)
    draw_set_font(fnt_medieval);

    // Posición inicial para el dibujo del texto
    var draw_x = 512;
    var draw_y = 190;
    var line_height = 26; // Altura de línea

    // Dibujar texto manualmente con saltos de línea
    draw_text(draw_x, draw_y, "Question 6");
    draw_text(draw_x, draw_y + line_height, "Responding to where are you from?:");
    draw_text(draw_x, draw_y + 2 * line_height, "Choose the correct way to respond to");
    draw_text(draw_x, draw_y + 3 * line_height, "the question: where are you From?");
    draw_text(draw_x, draw_y + 4 * line_height, "");
    draw_text(draw_x, draw_y + 5 * line_height, "a) I am from France.");
    draw_text(draw_x, draw_y + 6 * line_height, "b) I is from France");
    draw_text(draw_x, draw_y + 7 * line_height, "c) I are from France");

    // Restaurar el color y la fuente originales
    draw_set_color(original_color);
    draw_set_font(original_font);
}
