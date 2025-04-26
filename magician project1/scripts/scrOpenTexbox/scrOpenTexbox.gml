
function scrOpenTexbox(text){
    Obj_textbox.pages = scrSplitTextIntoPages(text, global.TEXTBOX_FONT, 27, 845, 179);
	Obj_textbox.page = 0;
	Obj_textbox.alarm[0] = 3;
}