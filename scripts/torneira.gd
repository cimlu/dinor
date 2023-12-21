extends Node2D


func _on_area_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		if Globals.piaLavavel:
			get_tree().change_scene_to_file("res://panels/pia.tscn")


func _on_area_mouse_exited():
	pass # Replace with function body.


func _on_area_mouse_entered():
	pass # Replace with function body.
