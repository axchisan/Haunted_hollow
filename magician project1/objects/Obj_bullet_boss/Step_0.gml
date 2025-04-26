// Evento Step de Obj_bullet_phantom

// Movimiento en línea recta
x += lengthdir_x(speed, direction);
y += lengthdir_y(speed, direction);

// Colisión con el jugador
if (place_meeting(x, y, Obj_magician)) {
    // Reducir la vida del jugador
    with (Obj_magician) {
        global.vida_actual -= 1;
		audio_play_sound(hit, 2, false);
    }
    // Destruir la bala
    instance_destroy();
}

// Destruir la bala si colisiona con un bloque
if (place_meeting(x, y, Obj_colision_block)) {
    instance_destroy(); 
}

// Destruir la bala si sale fuera de la room
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}
