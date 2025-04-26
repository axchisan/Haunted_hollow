scrOpenTexbox("Ah, so you need my help and have come to seek me out. You wish to cross the waters, but to do so, you must complete my challenge. Only by deciphering my number can you proceed on your journey. Are you ready to test your wits?");
scrFaceTo(Obj_magician.x, Obj_magician.y);

state = STATE_READING;
Obj_magician.state = STATE_READING;

Obj_textbox.callback = [scrFinishCharacterReading, [Obj_magician, id]];
