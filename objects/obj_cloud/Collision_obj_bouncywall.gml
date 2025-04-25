// Collision event between obj_cloud and obj_bouncywall
if (place_meeting(x + hspeed, y, obj_bouncywall)) {
    hspeed = -hspeed; // Reverse horizontal speed
}