
if (!global.game_over) {
    switch (state) {
        case STATE_IDLE:
            scrUpdateCooldowns();
            scrHandleMovement();
            scrPlayerCheckInteraction();
            scrPlayerCheckInteraction_question();
            scrHandleShooting();
            scrHandleAttackAnimation();
            scrCheckPlayerDeath();
            break;
        case STATE_READING:
            scrPlayerCheckReading();
            break;
    }
} else {
    
}
