
if (global.potion_spawn_timer > 0) {
    global.potion_spawn_timer -= 1;
} else {

if (instance_number(Obj_potion) == 0) { 
    var pos_x, pos_y, is_valid_position;
    
    repeat (100) { 
        pos_x = irandom_range(192, 1664);
        pos_y = irandom_range(192, 1664);
        
       
        is_valid_position = !position_meeting(pos_x, pos_y, Obj_colision_block);
        
        if (is_valid_position) {
            instance_create_layer(pos_x, pos_y, "Bullets", Obj_potion);
            global.potion_spawn_timer = global.potion_spawn_cooldown;
            break;
        }
    }
}

}
