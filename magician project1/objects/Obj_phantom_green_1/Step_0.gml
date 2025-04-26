// Obtener la posición del jugador
var player_x = player.x;
var player_y = player.y;

var distance_to_player = point_distance(x, y, player_x, player_y);


if (distance_to_player <= detect_range) {
    if (distance_to_player > attack_range) {
        var angle_to_player = point_direction(x, y, player_x, player_y);
        x += lengthdir_x(move_speed, angle_to_player);
        y += lengthdir_y(move_speed, angle_to_player);
		
    } else {
        wander_time -= 1;
        if (wander_time <= 0) {
            wander_time = irandom_range(30, 90);
            wander_direction = irandom_range(0, 359);
        }
        x += lengthdir_x(wander_speed, wander_direction);
        y += lengthdir_y(wander_speed, wander_direction);
    }
} else {
    wander_time -= 1;
    if (wander_time <= 0) {
        wander_time = irandom_range(30, 90);
        wander_direction = irandom_range(0, 359);
    }
    x += lengthdir_x(wander_speed, wander_direction);
    y += lengthdir_y(wander_speed, wander_direction);
}


if (abs(player_x - x) > abs(player_y - y)) {
    if (player_x > x) {
        sprite_index = Spr_phantom_green_right;
    } else {
        sprite_index = Spr_phantom_green_left;
    }
} else {
    if (player_y > y) {
        sprite_index = Spr_phantom_green_down;
    } else {
        sprite_index = Spr_phantom_green_up;
    }
}

// Manejo de disparo
if (cooldown_timer > 0) {
    cooldown_timer -= 1;
} else if (distance_to_player <= attack_range) {
    var bullet = instance_create_layer(x, y, "Bullets", Obj_bullet_phantom_green);
    bullet.direction = point_direction(x, y, player_x, player_y);
    bullet.speed = 6;
    cooldown_timer = cooldown;
}
