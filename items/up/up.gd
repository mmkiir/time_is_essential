extends "res://items/item.gd"


func _on_click():
	if Global.dict_state.TOY_TAKEN:
		$"/root/Game".set_room("res://rooms/room02/room02.tscn")
