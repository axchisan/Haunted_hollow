
function scrHandleShooting() {
    var direction_x = mouse_x - x;
    var direction_y = mouse_y - y;

    if (!atacando && cooldown_time <= 0 && pause_time <= 0) {
        if (mouse_check_button_pressed(mb_left)) {
            atacando = true;
            pause_time = 1; 

            var bullet_x;
            var bullet_y;

            if (abs(direction_x) > abs(direction_y)) {
                if (direction_x > 0) {
                    sprite_index = Spr_magician_static_right_attack_flame;
                    bullet_x = x + 72;
                    bullet_y = y + 44;
                } else {
                    sprite_index = Spr_magician_static_left_attack_flame;
                    bullet_x = x + 5;
                    bullet_y = y + 45;
                }
            } else {
                if (direction_y > 0) {
                    sprite_index = Spr_magician_static_down_attack_flame;
                    bullet_x = x + 29;
                    bullet_y = y + 36;
                } else {
                    sprite_index = Spr_magician_static_up_attack_flame;
                    bullet_x = x + 14;
                    bullet_y = y + 31;
                }
            }

            var bullet = instance_create_layer(bullet_x, bullet_y, "Instance_cuerpos", Obj_bullet_flame);
			audio_play_sound(fire, 2, false);
            bullet.direction = point_direction(x, y, mouse_x, mouse_y - 22);

            image_index = 0; 
            image_speed = 2; 

            cooldown_time = room_speed; 
        }
    }
}
