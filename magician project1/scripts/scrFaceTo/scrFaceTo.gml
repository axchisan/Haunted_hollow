function scrFaceTo(_x, _y) {
    var dx = _x - x;
    var dy = _y - y;

    if (abs(dx) > abs(dy)) {
        // Priorizar dirección horizontal
        if (dx > 0) {
            face = "R"; // Derecha
        } else if (dx < 0) {
            face = "L"; // Izquierda
        }
    } else {
        // Priorizar dirección vertical
        if (dy > 0) {
            face = "D"; // Abajo
        } else if (dy < 0) {
            face = "U"; // Arriba
        }
    }
}
