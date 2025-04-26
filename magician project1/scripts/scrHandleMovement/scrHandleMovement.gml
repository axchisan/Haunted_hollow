
if (!variable_global_exists("is_walking_sound_playing")) {
    global.is_walking_sound_playing = false;
}


if (!variable_global_exists("is_walking_in_water_sound_playing")) {
    global.is_walking_in_water_sound_playing = false;
}


function scrHandleMovement() {
    if (!atacando && pause_time <= 0) {
        var dir_x = 0;
        var dir_y = 0;

        if (keyboard_check(ord("W"))) {
            dir_y = -1;
            sprite_index = Spr_magician_walk_up;
        } else if (keyboard_check(ord("S"))) {
            dir_y = 1;
            sprite_index = Spr_magician_walk_down;
        }

        if (keyboard_check(ord("A"))) {
            dir_x = -1;
            sprite_index = Spr_magician_walk_left;
        } else if (keyboard_check(ord("D"))) {
            dir_x = 1;
            sprite_index = Spr_magician_walk_right;
        }

       
        var new_x = x + dir_x * velocidad;
        var new_y = y + dir_y * velocidad;

   
        var can_move_x = !place_meeting(new_x, y, Obj_colision_block) && !place_meeting(new_x, y, Obj_decorativo_parent);
        var can_move_y = !place_meeting(x, new_y, Obj_colision_block) && !place_meeting(x, new_y, Obj_decorativo_parent);
        
        if (can_move_x) {
            x = new_x;
        }
        if (can_move_y) {
            y = new_y;
        }

      
        var in_water = place_meeting(x, y, Obj_collision_water);


        if (dir_x == 0 && dir_y == 0) {
            switch (sprite_index) {
                case Spr_magician_walk_right:
                    sprite_index = Spr_magician_static_right;
                    break;
                case Spr_magician_walk_left:
                    sprite_index = Spr_magician_static_left;
                    break;
                case Spr_magician_walk_up:
                    sprite_index = Spr_magician_static_up;
                    break;
                case Spr_magician_walk_down:
                    sprite_index = Spr_magician_static_down;
                    break;
            }

       
            if (global.is_walking_sound_playing) {
                audio_stop_sound(Sound_walk);
                global.is_walking_sound_playing = false;
            }
            if (global.is_walking_in_water_sound_playing) {
                audio_stop_sound(water);
                global.is_walking_in_water_sound_playing = false;
            }
        } else {
            if (in_water) {
                if (!global.is_walking_in_water_sound_playing) {
                    audio_stop_sound(Sound_walk);
                    audio_play_sound(water, 1, true);
                    global.is_walking_in_water_sound_playing = true;
                }
                global.is_walking_sound_playing = false;
            } else {
                if (!global.is_walking_sound_playing) {
                    audio_stop_sound(water);
                    audio_play_sound(Sound_walk, 1, true); 
                    global.is_walking_sound_playing = true;
                }
                global.is_walking_in_water_sound_playing = false;
            }
        }
    }
}
