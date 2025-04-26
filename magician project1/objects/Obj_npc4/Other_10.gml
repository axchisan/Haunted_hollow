scrOpenTexbox("Where could my cat be?");
scrFaceTo(Obj_magician.x, Obj_magician.y);

state = STATE_READING;
Obj_magician.state = STATE_READING;

Obj_textbox.callback = [scrFinishCharacterReading, [Obj_magician, id]];
