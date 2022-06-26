extends "res://items/item.gd"


func _on_click():
	$"/root/Game".set_room("res://rooms/room01/room01.tscn")
