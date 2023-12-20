extends Node

var nextDialog = 1
var garyInt = false
var cataInt = false
var nextPerson = "Gary"
var aparent1 = ["gary", "hall"]

var senha = ["L", "O", "V", "E"]
var letras = ["A", "A", "A", "A"]
var opcoesLetras = ["A", "B", "C", "L", "O", "V", "E"]
var maletaAberta = false
var chaveVisivel = false

var door_timelab = "close"
var door_bath = "open"
var door_exit = "close"
var door_storage = "close"
var door_energylab = "close"
var door_biolab = "open"
var door_stairsup = "open"
var door_stairsdown = "faleGary"
var door_timemachine = "close"

var door_er1 = "open"
var door_er2 = "close"
var door_er3 = "open"
var door_er4 = "close"
var door_er5 = "close"
var door_er6 = "open"
var door_er7 = "close"
var door_er8 = "open"

var alavar
var lavado
var lavou = false
var lavando = false

var lavados = 0

func verificaSenha():
	if senha == letras and !maletaAberta:
		maletaAberta = true
		DialogueManager.show_example_dialogue_balloon(load("res://dialogs/maletaAbriu.dialogue"))

func lavar():
	if lavado != null:
		lavou = false
		lavando = true
		lavado.queue_free()
		Sound.playSong("lava")
		Chro.lavando.start()
		lavados += 1
	if lavou:
			lavando = false
			lavou = false
			alavar = null

func isAberto(door):
	if Globals.get(door) == "open":
		Sound.playSong("door")
		return true
	elif Globals.get(door) == "close":
		DialogueManager.show_example_dialogue_balloon(load("res://dialogs/trancado.dialogue"))
		Sound.playSong("locked")
		return false
	elif Globals.get(door) == "faleGary":
		DialogueManager.show_example_dialogue_balloon(load("res://dialogs/faleGary.dialogue"))
		return false
