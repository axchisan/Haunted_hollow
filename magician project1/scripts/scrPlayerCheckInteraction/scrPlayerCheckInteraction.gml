function scrPlayerCheckInteraction() {
    if (keyboard_check_pressed(ord("E")) && dir_x == 0 && dir_y ==0) {
        var interactive = scrGetNearbyObject();

        if (interactive != noone) {
            with (interactive) {
                event_user(0);
            }
        }
    }
}

