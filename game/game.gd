extends Node2D


var watch_overlay_instance = preload("res://items/overlay_watch/overlay_watch.tscn").instance()


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


func set_watch_overlay():
	remove_overlay()
	$OverlayWrapper.add_child(watch_overlay_instance)


func remove_watch_overlay():
	$OverlayWrapper.remove_child(watch_overlay_instance)


func set_default_dict_state():
	Global.dict_state = {
		"BOX_OPENED": false,
		"TOY_TAKEN": false,
		"MAILBOX01_OPENED": false,
		"KEY01_TAKEN": false,
		"CARPET_MOVED": false,
		"KEY02_TAKEN": false,
		"MAILBOX02_OPENED": false,
	}


func _ready():
	set_default_dict_state()
	set_room("res://rooms/room01/room01.tscn")
