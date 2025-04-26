function scrGetNearbyObject_question() {
    var range = 64*2; 
    var nearest_object = noone; 
    var nearest_distance = range; 


    var obj_list = [Obj_npc1, Obj_npc2, Obj_npc3, Obj_npc4,Obj_npc5,Obj_npc6];


    for (var i = 0; i < array_length(obj_list); i++) {
        with (obj_list[i]) {
            var distance = point_distance(other.x, other.y, x, y);
            if (distance < nearest_distance) {
                nearest_distance = distance;
                nearest_object = id;
            }
        }
    }

    return nearest_object;
}
