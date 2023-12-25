extends Node

var nextDialog = 1
var garyInt = false
var cataInt = false
var milaInt = false
var nextPerson = "Gary"
var aparent1 = ["gary", "hall"]

var local = "bath"
var language = "pt"

var garyFalou = false

var dificuldade = 0

var cooldown = 0

var celular = false
var cellPosicionado = false

var ovo = false
var ovoPosicionado = false

var need = false

#maleta enigma
var senha = ["L", "O", "V", "E"]
var letras = ["A", "A", "A", "A"]
var opcoesLetras = ["A", "B", "C", "L", "O", "V", "E"]
var maletaAberta = false
var chaveVisivel = false

#outras
var sangue = false
var passado = false

#portas para salas específicas
var door_timelab = "timelabTrancado"
var door_bath = "open"
var door_exit = "close"
var door_storage = "close"
var door_energylab = "energyTrancado"
var door_biolab = "open"
var door_stairsup = "open"
var door_stairsdown = "faleGary"
var door_timemachine = "open"

#portas para salas vazias "empty_room"
var door_er1 = "open"
var door_er2 = "close"
var door_er3 = "open"
var door_er4 = "close"
var door_er5 = "open"
var door_er6 = "close"
var door_er7 = "close"
var door_er8 = "open"

#lavar pratos task
var alavar
var lavado
var lavou = false
var lavando = false
var piaLavavel = false
var lavados = 0
var task_frascos_complete = false

func verificaSenha():
	if senha == letras and !maletaAberta:
		maletaAberta = true
		if !Commands.tem("keyYe"):
			DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/maletaAbriu.dialogue"))

func lavar():
	if alavar != null:
		lavando = true
		lavou = false
		lavado.queue_free()
		Sound.playSong("lava")
		Chro.lavando.start()
		lavados += 1

func isAberto(door):
	if Globals.get(door) == "open":
		Sound.playSong("door")
		return true
	elif Globals.get(door) == "close":
		DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/trancado.dialogue"))
		Sound.playSong("locked")
		return false
	elif Globals.get(door) == "faleGary":
		DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/faleGary.dialogue"))
		return false
	elif Globals.get(door) == "milaFala":
		DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/milaFala.dialogue"))
		return false
	elif Globals.get(door) == "milaMedo":
		DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/milaMedo.dialogue"))
		return false
	elif Globals.get(door) == "energyTrancado":
		DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/energyTrancado.dialogue"))
		if Globals.get(door) == "energyTrancado":
			Sound.playSong("locked")
			return false
	elif Globals.get(door) == "timelabTrancado":
		DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/timelabTrancado.dialogue"))
		if Globals.get(door) == "timelabTrancado":
			Sound.playSong("locked")
			return false
	elif Globals.get(door) == "guardarFrascos":
		DialogueManager.show_example_dialogue_balloon(load("res://dialogs/"+Globals.language+"/frascosGuardar.dialogue"))
		return false
