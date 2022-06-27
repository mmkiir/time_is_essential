extends "res://items/item.gd"


func _on_click():
	$"/root/Game".remove_overlay()


func _on_Button_pressed():
	print($SpinBox.get_line_edit().text)
	print($SpinBox2.get_line_edit().text)
	print($SpinBox3.get_line_edit().text)
	print($SpinBox4.get_line_edit().text)
	if ($SpinBox.get_line_edit().text == "1"
			and $SpinBox2.get_line_edit().text == "9"
			and $SpinBox3.get_line_edit().text == "8"
			and $SpinBox4.get_line_edit().text == "4"):
		get_tree().change_scene("res://game_over/game_over.tscn")

