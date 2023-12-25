extends TextureRect

@onready var return_arrow = $"../returnArrow"

func _ready():
	if Globals.passado:
		visible = true
		if Globals.garyFalou:
			return_arrow.visible = true
		else:
			return_arrow.visible = false
	else:
		visible = false

func _on_area_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		if !Globals.garyFalou:
			DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/garyMorrendo.dialogue"))
			return_arrow.visible = true
			Globals.garyFalou = true
