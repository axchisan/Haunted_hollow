
global.boss_max_health = 30;
global.boss_current_health = global.boss_max_health;

image_speed = 0;
move_speed = 6;
detect_range = 12 * 64;
attack_range = 4 * 64;
wander_speed = 4;
wander_time = 0;

max_health = global.boss_max_health;
healtha = max_health;

cooldown = 120; 
cooldown_timer = 0;


ghost_spawn_cooldown = 10 * room_speed;
ghost_spawn_timer = ghost_spawn_cooldown;


player = Obj_magician;  


wander_direction = irandom_range(0, 359);

ghost_types = [Obj_phantom, Obj_phantom1];
current_ghost_type = 0;



max_ghosts = 4;
