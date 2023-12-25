extends Node2D

@onready var cell_button = $cellButton

func _ready():
	if Globals.celular and Commands.tem("cell"):
		visible = true
		if Globals.cooldown != 0:
			cell_button.modulate = Color8(0,0,0,255)
	else:
		visible = false

func _on_area_input_event(_viewport, event, _shape_idx):
	if event.is_action_pressed("click"):
		if Globals.cooldown == 0:
			print(Globals.cooldown)
			print(Globals.dificuldade)
			Dinor.cell()
			Globals.cooldown = Globals.dificuldade
			print(Globals.cooldown)
			print(Globals.dificuldade)
			cell_button.modulate = Color8(0,0,0,255)
		else:
			DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/cellCooldown.dialogue"))
		
