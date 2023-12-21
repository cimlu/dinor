extends Node2D

@onready var sprite_dialog = $spriteDialog
@onready var sprite = $sprite
@export var dimension = 1.0
@onready var collision = $area/collision

func _ready():
	sprite_dialog.visible = false
	sprite_dialog.size.x = 128
	sprite_dialog.size.y = 128
	sprite_dialog.global_position = Vector2(-180,-88)
	sprite_dialog.size.x = (128/dimension)
	sprite_dialog.size.y = (128/dimension)

func _process(delta):
	if Globals.milaInt:
		sprite_dialog.visible = true
	else:
		sprite_dialog.visible = false

func _on_area_input_event(_viewport, event, _shape_idx):
	if event.is_action_pressed("click"):
		if Globals.nextPerson == "Mila":
			DialogueManager.show_example_dialogue_balloon(load("res://dialogs/dialog"+str(Globals.nextDialog)+".dialogue"))
		else:
			DialogueManager.show_example_dialogue_balloon(load("res://dialogs/milaSai.dialogue"))
