
function scrUpdateCooldowns() {
    if (cooldown_time > 0) {
        cooldown_time--;
    }

    if (pause_time > 0) {
        pause_time--;
    }
}
