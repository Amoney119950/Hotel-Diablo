if (keyboard_check_pressed(ord("F")) && global.is_dark_room) {
    lightState = !lightState;

    if (lightState) {
        light_on();
    } else {
        light_off();
    }
}