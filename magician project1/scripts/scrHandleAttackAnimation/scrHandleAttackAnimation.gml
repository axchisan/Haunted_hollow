
function scrHandleAttackAnimation() {
    if (atacando) {
        if (image_index >= image_number - 1) {
            atacando = false;
            image_speed = 1; 
            switch (sprite_index) {
                case Spr_magician_static_down_attack_flame:
                    sprite_index = Spr_magician_static_down;
                    break;
                case Spr_magician_static_left_attack_flame:
                    sprite_index = Spr_magician_static_left;
                    break;
                case Spr_magician_static_up_attack_flame:
                    sprite_index = Spr_magician_static_up;
                    break;
                case Spr_magician_static_right_attack_flame:
                    sprite_index = Spr_magician_static_right;
                    break;
            }
        }
    }
}
