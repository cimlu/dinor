extends Node2D

func _on_area_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		get_tree().change_scene_to_file("res://panels/maleta.tscn")
		Sound.playSong("arrow")
