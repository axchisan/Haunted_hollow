

other.healtha -= 1;


if (other.healtha <= 0) {
    audio_play_sound(screamphantom, 1, false);
    instance_destroy(other);
}

instance_destroy();
