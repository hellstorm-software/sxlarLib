function load_game() {
    if (file_exists("save.sav")) {
        global.loading_game = true; // Set to true before loading

        var file = file_text_open_read("save.sav");

        // Load the saved room index
        var saved_room_index = file_text_read_real(file);
        room_goto(saved_room_index); // Change to the saved room

        // Load player position
        objectPlayer.x = file_text_read_real(file); // Restore player x position
        objectPlayer.y = file_text_read_real(file); // Restore player y position

        global.currency = file_text_read_real(file);
        global.passive_income = file_text_read_real(file);
        global.essance = file_text_read_real(file);
        global.primojems = file_text_read_real(file);
		
		// clicker stuff
		global.cryptoCount = file_text_read_real(file);
		global.cryptoCost = file_text_read_real(file);
		global.cryptoOutput = file_text_read_real(file);
		
		global.fratCount = file_text_read_real(file);
		global.fratCost = file_text_read_real(file);
		global.fratOutput = file_text_read_real(file);
		
		global.policeCount = file_text_read_real(file);
		global.policeCost = file_text_read_real(file);
		global.policeOutput = file_text_read_real(file);
		
		global.ceoCount = file_text_read_real(file);
		global.ceoCost = file_text_read_real(file);
		global.ceoOutput = file_text_read_real(file);

        file_text_close(file);
        show_message("Game loaded successfully!");
    } else {
        show_message("No save file found.");
    }
}