extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	if Globals.celular:
		visible = true
	else:
		visible = false
	Globals.cooldown = 0


func _on_area_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		if Globals.cooldown == 0:
			Globals.cooldown = Globals.dificuldade
			Dinor.cell()
		else:
			DialogueManager.show_example_dialogue_balloon(load("res://dialogs/cellCooldown.dialogue"))
		
