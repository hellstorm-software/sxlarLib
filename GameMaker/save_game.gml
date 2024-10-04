function save_game() {
    var file = file_text_open_write("save.sav");
    
    // Save the current room index
    file_text_write_real(file, room); // Save current room index
    
    // Save player position
    file_text_write_real(file, objectPlayer.x); // Save player x position
    file_text_write_real(file, objectPlayer.y); // Save player y position
    
    file_text_write_real(file, global.currency); 
    file_text_write_real(file, global.passive_income);
    file_text_write_real(file, global.essance);
    file_text_write_real(file, global.primojems);
	
	// clicker stuff
    file_text_write_real(file, global.cryptoCount);
    file_text_write_real(file, global.cryptoCost);	
    file_text_write_real(file, global.cryptoOutput);
	
    file_text_write_real(file, global.fratCount);
    file_text_write_real(file, global.fratCost);	
    file_text_write_real(file, global.fratOutput);
    
    file_text_write_real(file, global.policeCount);
    file_text_write_real(file, global.policeCost);	
    file_text_write_real(file, global.policeOutput);
	
    file_text_write_real(file, global.ceoCount);
    file_text_write_real(file, global.ceoCost);	
    file_text_write_real(file, global.ceoOutput);
	
    file_text_close(file);
    show_debug_message("Game saved successfully!");
}
