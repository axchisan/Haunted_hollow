function scrPlayerCheckInteraction_question() {
    if (keyboard_check_pressed(ord("Q")) && dir_x == 0 && dir_y ==0) {
        var interactive = scrGetNearbyObject_question();

        if (interactive != noone) {
            with (interactive) {
                event_user(1);
				global.player_x = Obj_magician.x;
                global.player_y = Obj_magician.y;
            }
        }
    }
}

