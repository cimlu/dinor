extends Node2D

@onready var bg = $"../bg"
var bgs = ["credits", "credits1", "credits2", "credits3"]
var bgnumber = 0

func _on_area_input_event(viewport, event, shape_idx):
	pass
#	if event.is_action_pressed("click"):
#		if bgnumber == 3:
#			bgnumber = 0
#		else:
#			bgnumber += 1
#		bg.texture = load("res://assets/bgs/credits"+str(bgnumber)+".png")
#		Sound.playSong("arrow")
#		if bgnumber == 2:
#			DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/naomostra.dialogue"))
#		if bgnumber == 3:
#			DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/creditos.dialogue"))
