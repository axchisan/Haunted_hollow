
global.boss_current_health = healtha;

var player_x = player.x;
var player_y = player.y;


var distance_to_player = point_distance(x, y, player_x, player_y);


if (distance_to_player <= detect_range) {
    if (distance_to_player < attack_range) {
        var angle_away_from_player = point_direction(player_x, player_y, x, y);
        x += lengthdir_x(move_speed, angle_away_from_player);
        y += lengthdir_y(move_speed, angle_away_from_player);
		
		
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


if (x < 0) x = 0;
if (x > room_width) x = room_width;
if (y < 0) y = 0;
if (y > room_height) y = room_height;


if (abs(player_x - x) > abs(player_y - y)) {
    if (player_x > x) {
        sprite_index = Spr_boss_right;
		
    } else {
        sprite_index = Spr_boss_left;
    }
	
} else {
    if (player_y > y) {
        sprite_index = Spr_boss_down;
    } else {
        sprite_index = Spr_boss_up;
    }
}


if (cooldown_timer > 0) {
    cooldown_timer -= 1;
} else if (distance_to_player <= attack_range) {
    var bullet = instance_create_layer(x, y, "Bullets", Obj_bullet_boss);
    bullet.direction = point_direction(x, y, player_x, player_y);
    bullet.speed = 6;
    cooldown_timer = cooldown;
}


var ghost_count = instance_number(Obj_phantom) + instance_number(Obj_phantom1);


if (ghost_spawn_timer > 0) {
    ghost_spawn_timer -= 1;
} else if (ghost_count < max_ghosts) {
    var ghost_type = ghost_types[current_ghost_type];
    for (var i = 0; i < 3; i++) {
        if (instance_number(Obj_phantom) + instance_number(Obj_phantom1) >= max_ghosts) break;
        var offset_x = lengthdir_x(32, irandom_range(0, 359));
        var offset_y = lengthdir_y(32, irandom_range(0, 359));
        var ghost = instance_create_layer(x + offset_x, y + offset_y, "Enemies", ghost_type);
        ghost.player = player; 
    }
   
   
    current_ghost_type = (current_ghost_type + 1) % array_length(ghost_types);
    ghost_spawn_timer = ghost_spawn_cooldown;
}
