/// @description GUI Variable Setup

// health meter variables
heart_1 = 0;
heart_2 = 0;
heart_3 = 0;
heart_4 = 0;

// clock variables
time = 0;
real_seconds = 0;
minutes = 0;
hours = 0;

// simple text popup messages
display_popup_now = false;
popup_message = "";
popup_length = 5;
popup_countdown = 0;
temp_timer = 0;

// pause menu variables
game_is_paused = false;
pause_selection = 0;

// main menu variables
in_main_menu = false;
main_menu_selection = 0;

// option menu variables
in_option_menu = false;
option_menu_selection = 0;
just_left_option_menu = false;

// death menu variables
player_is_dead = false;
death_menu_selection = 0;

// beating a level variables
player_beat_level = false;
next_room = rm_start;
level_fade_out_alpha = 0;
display_time_timer = 2.0;
display_par_timer = 3.0;

// Pausing popup message variables
display_pausing_popup = false;


// Run the room par setting event
event_user(1)