/// Evento Collision de Obj_bullet con Obj_boss
other.healtha -= 1;
global.boss_current_health = other.healtha;

if (other.healtha <= 0) {
    // Destruir el jefe
    instance_destroy(other);
	audio_stop_all();
	room_goto(credits);
}

instance_destroy();
