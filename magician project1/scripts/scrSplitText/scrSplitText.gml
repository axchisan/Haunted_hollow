
function scrSplitText(text, delimiter) {
	var words = []; 
	
	
	var i1 = 1;
	var i2 = string_pos_ext(delimiter, text, i1);
	
	
	while (i2 != 0) {
		
		var word = string_replace(string_copy(text, i1, i2 - i1), delimiter, "");
		
		words[array_length(words)] = word;
		
		i1 = i2 + 1;
		i2 = string_pos_ext(delimiter, text, i1);
	}
	
	
	if (i1 + 1 < string_length(text)) {
		var lastWord = string_replace(string_copy(text, i1 + 1, string_length(text)), delimiter, "");
		words[array_length(words)] = lastWord;
	}
	
	
	return words;
}