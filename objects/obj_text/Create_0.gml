spd = 0.25;
letters = 0;
text = ""; // Initialize text variable
length = 0;
text_current = "";
w = 0;
h = 0;
border = 10;

// Check the current room and set text accordingly
switch (room) {
    case rm_alone:
        text = "Welcome, most people dont like being alone!\nCan you survive in this room alone for 30 seconds?\nKeep watch for the time!\nPress S to remove sign.";
        break;
    case rm_snakes:
        text = "Welcome to Room 2!\nBeware of the snakes ahead.\nTo shoot Left Click your mouse.\nPress S to remove sign.";
        break;
		case rm_spiders:
        text = "Room 3!\nYou got through Snakes now you have Spiders to face.\nYou got this!\nPress S to remove sign.";
        break;
		case rm_blood:
        text = "Room 4 is full of Blood\nIf you fall in then your movement speed is lowered.\nKeep watch for the time!.\nPress S to remove sign.";
        break;
		case rm_darkness:
        text = "Almost there, you're in Room 5!\nI just hope you're not afried of the Dark.\nPress F for flashlight but you dont have unlimited light.\nPress S to remove sign.";
        break;
		case rm_height:
        text = "Last Room, Room 6!\nDont look down.\nCLimb your way to the top.\nPress S to remove sign.";
        break;
		case rm_finish:
        text = "Congratulations for confronting your phobias; \nchoose the door you wish to enter through by \nhitting pressing R on the door Reset \nand Escape on door End.\nPress S to remove sign.";
        break;
		case rm_fail:
        text = "Your phobias got the best of you; \nchoose the door you wish to enter through by \nhitting pressing R on the door Reset \nand Escape on door End.\nPress S to remove sign.";
        break;
    // Add more cases for other rooms as needed
    default:
        text = "Default message for unknown room.\nPress S to remove sign.";
        break;
}

length = string_length(text);
