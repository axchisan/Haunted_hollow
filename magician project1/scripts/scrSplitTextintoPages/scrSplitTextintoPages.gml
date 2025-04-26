
function scrSplitTextIntoPages(text, font, separation, width, height) {
	var pages = []; 
	var page = ""; 
	
	
	var words = scrSplitText(text, " ");
	var length = array_length(words);


	draw_set_font(font);
	

	for (var i=0;i<length;i++) {
		var word = words[i];
		
		
		if (string_height_ext(page + " " + word, separation, width) >= height) {
			
			pages[array_length(pages)] = page;
			
			page = word;
		} else {
			
			if (i > 0) { page += " "; }
			page += word;
		}
	}
	
	
	pages[array_length(pages)] = page;
	
	
	return pages;
}




