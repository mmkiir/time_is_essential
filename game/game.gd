extends Node2D


func set_room(path):
	var instance = load(path).instance()
	
	if $RoomWrapper.get_child_count():
		$RoomWrapper.get_child(0).queue_free()
		
	$RoomWrapper.add_child(instance)


func _ready():
	set_room("res://rooms/room01/room01.tscn")
