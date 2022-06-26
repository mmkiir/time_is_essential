extends Node2D


func set_room(path):
	var instance = load(path).instance()
	
	if $RoomWrapper.get_child_count():
		$RoomWrapper.get_child(0).queue_free()
		
	$RoomWrapper.add_child(instance)


func set_overlay(path):
	remove_overlay()
	var instance = load(path).instance()
	$OverlayWrapper.add_child(instance)


func remove_overlay():
	if $OverlayWrapper.get_child_count():
		$OverlayWrapper.get_child(0).queue_free()


func _ready():
	set_room("res://rooms/room01/room01.tscn")
