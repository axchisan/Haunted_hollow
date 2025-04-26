
var bar_width = 512;
var bar_height = 16; 
var x_offset = -bar_width / 2; 
var y_offset = 0;  


var health_ratio = current_health / max_health;

draw_healthbar(x + x_offset, y + y_offset, x + x_offset + bar_width, y + y_offset + bar_height, health_ratio * 100, c_black, c_gray, c_purple, 0, true, true);


