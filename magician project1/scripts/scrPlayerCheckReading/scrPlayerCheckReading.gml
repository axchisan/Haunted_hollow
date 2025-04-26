function scrPlayerCheckReading() {
	if (keyboard_check_pressed(ord("E"))) {
		with (Obj_textbox) {
			event_user(0);
		}
	}
}