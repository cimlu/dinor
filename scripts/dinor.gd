extends Node2D

var patrulha = false
var distancia = 0
var rgn = RandomNumberGenerator.new()
var vindo = false
var bg
var apatrulhar = false

@onready var foots = $foots

func pauseFoots():
	foots.playing = false

func _process(_delta):
	if apatrulhar:
		foots.volume_db = distancia * 6
		foots.play()
		patrulha = true
		apatrulhar = false
		vindo = true

func cell():
	afasta(1)

func movement():
	if distancia > 3:
		get_tree().change_scene_to_file("res://panels/ataque.tscn")
		Sound.aumenta("bgmusic")
		Sound.aumenta("bgmusic")
	else:
		var value = rgn.randi_range(0,1000)
		if Globals.dificuldade == 1:
			easyMovement(value)
		elif Globals.dificuldade == 2:
			impMovement(value)
		elif Globals.dificuldade == 3:
			godMovement(value)
		else:
			easyMovement(value)

func easyMovement(value):
	if value < 200:
		afasta(1)
	elif value < 500:
		pass
	elif value < 683:
		aproxima(1)
	else:
		aproxima(2)

func impMovement(value):
	if value < 100:
		afasta(1)
	elif value < 300:
		pass
	elif value < 800:
		aproxima(1)
	else:
		aproxima(2)

func godMovement(value):
	if value < 50:
		afasta(1)
	elif value < 150:
		pass
	else:
		aproxima(1)

func aproxima(val):
	distancia += val
	changeVolumeFoots()

func afasta(val):
	if distancia >= 0:
		distancia -= val
		changeVolumeFoots()

func changeVolumeFoots():
	foots.volume_db = 6*distancia
