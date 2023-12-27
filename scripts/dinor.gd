extends Node2D

var patrulha = false
var distancia = 0
var rgn = RandomNumberGenerator.new()
var vindo = false
var bg
var apatrulhar = false

func _process(_delta):
	if apatrulhar:
		Sound.playSong("foots")
		patrulha = true
		apatrulhar = false

func patrulhando():
	Sound.playSong("foots")

func cell():
	if distancia != 0:
		Sound.diminui("foots")
		distancia -= 1
		print("alivio")

func movement():
	var value = rgn.randi_range(0,1000)
	
	if !vindo:
		if value < 50:
			distancia -= 1
			vindo = true
			Sound.diminui("foots")
		elif value < 150:
			print("nada")
		else:
			distancia += 1
			print("se aproxima")
			Sound.aumenta("foots")
	else:
		distancia += 1
		Sound.aumenta("foots")
		print("se aproxima")
		
	if distancia >= 3:
		get_tree().change_scene_to_file("res://panels/ataque.tscn")
		Sound.pauseSong("foots")
		Sound.pauseSong("foots")
		Sound.aumenta("bgmusic")
		Sound.aumenta("bgmusic")
	
	print(value)
	
