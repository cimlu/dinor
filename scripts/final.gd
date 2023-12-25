extends Control

func _ready():
	DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/final.dialogue"))
