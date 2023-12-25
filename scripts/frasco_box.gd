extends Node2D

func _ready():
	if Commands.tem("frascos"):
		Globals.door_storage = "guardarFrascos"

func _on_area_input_event(_viewport, event, _shape_idx):
	if event.is_action_pressed("click"):
		if Commands.tem("frascos"):
			Commands.toCollect = "frascos"
			DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/frascosGuardados.dialogue"))
			
