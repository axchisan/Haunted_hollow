
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Colisión con el jugador
if (place_meeting(x, y, Obj_magician)) {
    
    with (Obj_magician) {
        global.vida_actual -= 1;
		audio_play_sound(hit, 2, false);
    }
    
    instance_destroy();
}


if (place_meeting(x, y, Obj_colision_block)) {
    instance_destroy(); 
}


if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}
