/// @description Prints Text To Screen With Shadow
/// @param {int} x x coordinate to print to
/// @param {int} y y coordinate to print to
/// @param {string}  string string to print
/// @param {int} x_offset horizontal offset of shadow
/// @param {int} y_offset vertical offset of shadow

	current_color=draw_get_color()

	draw_set_color(c_black);
	draw_text(argument0+argument3,argument1+argument4,argument2);

	draw_set_color(current_color);
	draw_text(argument0,argument1,argument2);