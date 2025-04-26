switch (global.room1_open_count) {
        case 1:
            scrOpenTexbox("Hello, welcome. Remember to press the E key to talk to someone or to advance a dialogue. Keep in mind that you must speak with someone first before you can interact with them.");
			audio_play_sound(Soundinitial, 1, false);

            state = STATE_READING;
            Obj_magician.state = STATE_READING;

            Obj_textbox.callback = [scrFinishCharacterReading, [Obj_magician, id]];
            break;
}

