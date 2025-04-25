
// Ensure SAVEFILE is defined before using it
if (file_exists(SAVEFILE)) {
    file_delete(SAVEFILE);
}

// Open the file for writing
var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file, room);
file_text_close(file);