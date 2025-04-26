scrOpenTexbox("He watches you from the shadows. In fact, it's quite likely he's listening to us right this moment, ever vigilant, ever present.");
scrFaceTo(Obj_magician.x, Obj_magician.y);

state = STATE_READING;
Obj_magician.state = STATE_READING;

Obj_textbox.callback = [scrFinishCharacterReading, [Obj_magician, id]];
