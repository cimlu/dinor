extends Area2D

@export var destiny = ""

func _on_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		get_tree().change_scene_to_file("res://panels/"+destiny+".tscn")
