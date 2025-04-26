scrOpenTexbox("So... you want me to give you a number, right? Well, it won't be that easy. You can't expect me to just hand over something so important. You'll have to prove your worth. Only those who are worthy and capable of overcoming the challenges will obtain what they seek. Are you ready to face the trial that awaits you?");
scrFaceTo(Obj_magician.x, Obj_magician.y);

state = STATE_READING;
Obj_magician.state = STATE_READING;

Obj_textbox.callback = [scrFinishCharacterReading, [Obj_magician, id]];
