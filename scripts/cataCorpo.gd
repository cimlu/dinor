extends TextureRect

@onready var celular = $"../celular"
@onready var cell = $"../cell"
@onready var blue_egg = $"../blueEgg"
@onready var ovo_local = $"../ovoLocal"

# Called when the node enters the scene tree for the first time.
func _ready():
	if Globals.sangue:
		visible = true
	else:
		visible = false

func _process(delta):
	if Globals.celular and !Globals.cellPosicionado:
		DialogueManager.show_example_dialogue_balloon(load("res://dialogs/dificuldade.dialogue"))
		cell.position = celular.position
		Globals.cellPosicionado = true
	if Globals.ovo and !Globals.ovoPosicionado:
		blue_egg.position = ovo_local.position
		Globals.ovoPosicionado = true
