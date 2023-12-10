extends Node2D



var current_slot = null

func _ready():
	pass




func _on_slots_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		print("a")
