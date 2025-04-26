if (pages == noone) { exit; }
var _x = 320;
var _y = 575;

draw_sprite(Spr_textbox, 0, _x, _y);

draw_set_font(global.TEXTBOX_FONT);
draw_text_ext(_x + 14, _y + 6, textonDisplay, 27, 845);