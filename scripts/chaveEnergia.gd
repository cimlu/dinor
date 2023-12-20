extends Marker2D

@onready var key_ye = $"../keyYe"
@onready var chave_energia = $"."

func _process(delta):
	if Globals.maletaAberta and !Globals.chaveVisivel:
		key_ye.position = chave_energia.position
		Globals.chaveVisivel = true
		
