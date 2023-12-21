extends TextureRect


@onready var return_arrow = $"../returnArrow"

# Called when the node enters the scene tree for the first time.
func _ready():
	if Globals.passado:
		visible = true
		return_arrow.visible = false
	else:
		visible = false

func _on_area_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		DialogueManager.show_example_dialogue_balloon(load("res://dialogs/garyMorrendo.dialogue"))
		return_arrow.visible = true
