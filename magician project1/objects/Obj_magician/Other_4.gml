global.room1_open_count += 1;

    switch (global.room1_open_count) {
        case 1:
		    x = 256;
            y = 448;
            break;
        case 2:
            x = 1600;
            y = 3200;
			audio_stop_sound(uff);
            audio_play_sound(music1, 1, true);
            break;
        case 3:
            x = 768;
            y = 1344;
			audio_stop_sound(uff);
            audio_play_sound(music1, 1, true);
            break;
        case 4:
            x = 2994;
            y = 8512;
			audio_stop_sound(uff);
            audio_play_sound(music1, 1, true);
            break;
        case 5:
            x = 5504;
            y = 1600;
			audio_stop_sound(uff);
            audio_play_sound(music1, 1, true);
            break;
        case 6:
            x = 8448;
            y = 1920;
 			audio_stop_sound(uff);
            audio_play_sound(music1, 1, true);
            break;
	    case 7:
            x = 10816;
            y = 7168;
			audio_stop_sound(uff);
            audio_play_sound(music1, 1, true);
			break;
		case 8:
		    x = 256;
            y = 448;
			audio_stop_sound(music1);
            audio_play_sound(jefemusic, 1, true);
			break;
        default:
            
            x = 256;
            y = 448;
			audio_stop_all();
            audio_play_sound(jefemusic, 1, true);
            break;
	}


            