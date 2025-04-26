scrOpenTexbox("Ohh... it seems you also got lost in these dungeons. Don't worry, you weren't the only one. To escape, you need to collect 6 numbers to unlock the pentagram. The numbers are held by other adventurers exploring the dungeon. I warn you, there will be specters throughout the dungeon that won't hesitate to attack you. To defend yourself, you must use your magic (click the left mouse button on them to attack). You will need to speak with the adventurers in a specific order to unlock rooms and proceed. And remember, you must first talk to them using the 'E' key, and open their riddles using the 'Q' key.");
scrFaceTo(Obj_magician.x, Obj_magician.y);

state = STATE_READING;
Obj_magician.state = STATE_READING;

Obj_textbox.callback = [scrFinishCharacterReading, [Obj_magician, id]];
