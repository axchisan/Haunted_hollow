
draw_self();


var heart_width = 32; 
var heart_height = 32; 


var view_x = camera_get_view_x(view_camera[0]);
var view_y = camera_get_view_y(view_camera[0]);


var heart_x = view_x + display_get_width() - (heart_width * global.vida_maxima) - 10;
var heart_y = view_y + 10;

for (var i = 0; i < global.vida_maxima; i++) {
    if (i < global.vida_actual) {
        draw_sprite(Spr_hud_heart, 0, heart_x + (heart_width * i), heart_y);
    }
}
