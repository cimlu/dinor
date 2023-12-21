extends Node2D

func _on_area_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		if Commands.tem("frascos"):
			Commands.toCollect = "frascos"
			DialogueManager.show_example_dialogue_balloon(load("res://dialogs/frascosGuardados.dialogue"))
			
