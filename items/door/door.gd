extends "res://items/item.gd"


func _on_click():
	$"/root/Game".set_room("res://rooms/room02/room02.tscn")
