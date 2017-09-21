//This script is used to get player input


hinput = keyboard_check(ord("D")) - keyboard_check(ord("A")) // Get the movement. If niether or both keys are pressed the result is 0
j_key = keyboard_check_pressed(vk_space); // Checks for space bar input
if keyboard_check(vk_escape){ // Checks for escape key input
	game_end(); // Quits the game if true
}