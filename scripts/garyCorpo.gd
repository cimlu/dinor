extends TextureRect

@onready var chave = $"../chave"
@onready var key_pu = $"../keyPu"

func _ready():
	if Globals.sangue:
		visible = true
		key_pu.position = chave.position
	else:
		visible = false
