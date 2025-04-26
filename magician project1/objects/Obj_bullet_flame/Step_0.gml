/// Step Event

// Mover la bala en la dirección guardada
var move_x = lengthdir_x(speed, direction);
var move_y = lengthdir_y(speed, direction);
x += move_x;
y += move_y;

// Verificar colisiones con los objetos bloque
if (place_meeting(x, y, Obj_colision_block)) {
    instance_destroy(); // Destruir la bala si colisiona con un bloque
}

// Destruir la bala si sale fuera de la room
if (x < 0 || x > room_width || y < 0 || y > room_height) {
    instance_destroy();
}