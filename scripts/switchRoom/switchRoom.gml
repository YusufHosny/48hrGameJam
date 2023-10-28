
function switchRoom(targetRoom){
	instance_create_depth(0,0,-9999,transition);
	room_goto(targetRoom);
}