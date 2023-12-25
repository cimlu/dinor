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
		
	if Globals.celular and !Commands.tem("cell"):
		cell.position = celular.position
		Globals.cellPosicionado = true

func _process(_delta):
	if Globals.celular and !Globals.cellPosicionado:
		cell.position = celular.position
		Globals.cellPosicionado = true
	if Globals.ovo and !Globals.ovoPosicionado:
		blue_egg.position = ovo_local.position
		Globals.ovoPosicionado = true
