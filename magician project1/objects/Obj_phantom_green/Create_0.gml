move_speed = 3;
detect_range = 8 * 64;
attack_range = 4 * 64; 
wander_speed = 1;
wander_time = 0;

max_health = 3;
healtha = max_health;

cooldown = 120;
cooldown_timer = 0;


player = Obj_magician; 

// Evitar superposición inicial con otros fantasmas
var tries = 0;
while (place_meeting(x, y, Obj_phantom_green) || place_meeting(x, y, Obj_phantom_green_1)) {
    x += irandom_range(-64, 64);
    y += irandom_range(-64, 64);
    tries += 1;
    if (tries > 10) break;
}
