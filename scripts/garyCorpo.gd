extends TextureRect

@onready var chave = $"../chave"
@onready var key_pu = $"../keyPu"


# Called when the node enters the scene tree for the first time.
func _ready():
	if Globals.sangue:
		visible = true
		key_pu.position = chave.position
	else:
		visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
