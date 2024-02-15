extends Marker2D

@onready var key_ye = $"../keyYe"
@onready var chave_energia = $"."

func _ready():
	if Globals.maletaAberta and !Commands.tem("keyYe"):
		key_ye.position = chave_energia.position
