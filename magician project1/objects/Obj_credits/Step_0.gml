
if (keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)) {
    image_index += 1;
    if (image_index >= image_number) {
        game_end();
    }
}
