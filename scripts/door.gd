extends Node2D

@export var destiny = ""

func _ready():
	pass # Replace with function body.

func _on_area_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		get_tree().change_scene_to_file(destiny)

