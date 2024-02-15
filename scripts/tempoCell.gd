extends Node2D

@onready var cell_button = $cellButton
var rgn = RandomNumberGenerator.new()

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
			Dinor.cell()
			var chanceCell = rgn.randi_range(0,100)
			if chanceCell > 11*Globals.dificuldade:
				Globals.cooldown = Globals.dificuldade
			else:
				Globals.cooldown = Globals.dificuldade + 1
			cell_button.modulate = Color8(0,0,0,255)
		else:
			DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/cellCooldown.dialogue"))
		
