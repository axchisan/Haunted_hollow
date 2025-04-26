scrOpenTexbox("This dungeon grows more perilous with each step, fueled by the dark power that sustains it. You are our only hope.");
scrFaceTo(Obj_magician.x, Obj_magician.y);

state = STATE_READING;
Obj_magician.state = STATE_READING;

Obj_textbox.callback = [scrFinishCharacterReading, [Obj_magician, id]];
