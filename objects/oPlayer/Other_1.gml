/// @description Triggers Room Restart

if (bbox_top > room_height) {
	instance_destroy();
	obj_control.alarm[0] = room_speed;
}
	


