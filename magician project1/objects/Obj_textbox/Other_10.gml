if (textonDisplay != pages[page]) {
	textonDisplay = pages[page];
	exit;
}

page += 1;
textonDisplay = "";
alarm[0] = 3;

if (page >= array_length(pages)) {
	pages = noone;
	
	if (callback != noone) {
		script_execute_ext(callback[0], callback[1]);
		callback = noone;
	}
		
}