extends Node

var nextDialog = 1
var garyInt = false
var cataInt = false
var nextPerson = "Gary"
var aparent1 = ["gary", "hall"]

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

func isAberto(door):
	if Globals.get(door) == "open":
		return true
	elif Globals.get(door) == "close":
		DialogueManager.show_example_dialogue_balloon(load("res://dialogs/trancado.dialogue"))
		return false
	elif Globals.get(door) == "faleGary":
		DialogueManager.show_example_dialogue_balloon(load("res://dialogs/faleGary.dialogue"))
		return false
