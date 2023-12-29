extends Node

const SAVE_FILE = "user://savefile.dat"
var data = {}
var menu
var paused = false

func _ready():
	load_data()

func clear():
	get_tree().change_scene_to_file("res://panels/menu.tscn")
	Sound.pauseSong("bgmusic")
	Sound.pauseSong("foots")
	var file = FileAccess.open(SAVE_FILE, FileAccess.WRITE)
	data = {
		"nextDialog" = 1,
		"garyInt" = false,
		"cataInt" = false,
		"milaInt" = false,
		"nextPerson" = "Gary",
		"aparent1" = ["gary", "hall"],
		"local" = "bath",
		"language" = "pt",
		"garyFalou" = false,
		"dificuldade" = 0,
		"cooldown" = 0,
		"celular" = false,
		"cellPosicionado" = false,
		"ovo" = false,
		"ovoPosicionado" = false,
		"need" = false,
		"letras" = ["A", "A", "A", "A"],
		"opcoesLetras" = ["A", "B", "C", "L", "O", "V", "E"],
		"maletaAberta" = false,
		"chaveVisivel" = false,
		"sangue" = false,
		"passado" = false,
		"door_timelab" = "timelabTrancado",
		"door_storage" = "close",
		"door_energylab" = "energyTrancado",
		"door_biolab" = "open",
		"door_stairsdown" = "faleGary",
		"lavou" = false,
		"lavando" = false,
		"piaLavavel" = false,
		"lavados" = 0,
		"task_frascos_complete" = false,
		"selectedSlot" = null,
		"inventory" = [null,null,null,null,null,null,null],
		"slotsel" = null,
		"invfull" = null,
		"patrulha" = false,
		"distancia" = 0,
		"vindo" = false,
		"bg" = null,
		"apatrulhar" = false
	}
	file.store_var(data)
	file = null
	get_tree().quit()
	
func save_data():
	var file = FileAccess.open(SAVE_FILE, FileAccess.WRITE)
	data = {
		"nextDialog" = nextDialog,
		"garyInt" = garyInt,
		"cataInt" = cataInt,
		"milaInt" = milaInt,
		"nextPerson" = nextPerson,
		"aparent1" = aparent1,
		"local" = local,
		"language" = language,
		"garyFalou" = garyFalou,
		"dificuldade" = dificuldade,
		"cooldown" = cooldown,
		"celular" = celular,
		"cellPosicionado" = cellPosicionado,
		"ovo" = ovo,
		"ovoPosicionado" = ovoPosicionado,
		"need" = need,
		"letras" = letras,
		"opcoesLetras" = opcoesLetras,
		"maletaAberta" = maletaAberta,
		"chaveVisivel" = chaveVisivel,
		"sangue" = sangue,
		"passado" = passado,
		"door_timelab" = door_timelab,
		"door_storage" = door_storage,
		"door_energylab" = door_energylab,
		"door_biolab" = door_biolab,
		"door_stairsdown" = door_stairsdown,
		"lavou" = lavou,
		"lavando" = lavando,
		"piaLavavel" = piaLavavel,
		"lavados" = lavados,
		"task_frascos_complete" = task_frascos_complete,
		"selectedSlot" = Commands.selectedSlot,
		"inventory" = Commands.inventory,
		"slotsel" = Commands.slotsel,
		"invfull" = Commands.invfull,
		"patrulha" = Dinor.patrulha,
		"distancia" = Dinor.distancia,
		"vindo" = Dinor.vindo,
		"bg" = Dinor.bg,
		"apatrulhar" = Dinor.apatrulhar
	}
	file.store_var(data)
	file = null
	print("salvou")
	if Dinor.patrulha == true:
		Dinor.apatrulhar = true
	print(local)

func load_data():
	if !FileAccess.file_exists(SAVE_FILE):
		data = {
			"nextDialog" = 1,
			"garyInt" = false,
			"cataInt" = false,
			"milaInt" = false,
			"nextPerson" = "Gary",
			"aparent1" = ["gary", "hall"],
			"local" = "bath",
			"language" = "pt",
			"garyFalou" = false,
			"dificuldade" = 0,
			"cooldown" = 0,
			"celular" = false,
			"cellPosicionado" = false,
			"ovo" = false,
			"ovoPosicionado" = false,
			"need" = false,
			"letras" = ["A", "A", "A", "A"],
			"opcoesLetras" = ["A", "B", "C", "L", "O", "V", "E"],
			"maletaAberta" = false,
			"chaveVisivel" = false,
			"sangue" = false,
			"passado" = false,
			"door_timelab" = "timelabTrancado",
			"door_storage" = "close",
			"door_energylab" = "energyTrancado",
			"door_biolab" = "open",
			"door_stairsdown" = "faleGary",
			"lavou" = false,
			"lavando" = false,
			"piaLavavel" = false,
			"lavados" = 0,
			"task_frascos_complete" = false,
			"selectedSlot" = null,
			"inventory" = [null,null,null,null,null,null,null],
			"slotsel" = null,
			"invfull" = null,
			"patrulha" = false,
			"distancia" = 0,
			"vindo" = false,
			"bg" = null,
			"apatrulhar" = false
		}
		save_data()
	var file = FileAccess.open(SAVE_FILE, FileAccess.READ)
	load_previous_data(file)
	file = null

func load_previous_data(file):
	data = file.get_var()
	nextDialog = data.nextDialog
	garyInt = data.garyInt
	cataInt = data.cataInt
	milaInt = data.milaInt
	nextPerson = data.nextPerson
	aparent1 = data.aparent1
	local = data.local
	language = data.language
	garyFalou = data.garyFalou
	dificuldade = data.dificuldade
	cooldown = data.cooldown
	celular = data.celular
	cellPosicionado = data.cellPosicionado
	ovo = ovo
	ovoPosicionado = data.ovoPosicionado
	need = data.need
	letras = data.letras
	opcoesLetras = data.opcoesLetras
	maletaAberta = data.maletaAberta
	chaveVisivel = data.chaveVisivel
	sangue = data.sangue
	passado = data.passado
	door_timelab = data.door_timelab
	door_storage = data.door_storage
	door_energylab = data.door_energylab
	door_biolab = data.door_biolab
	door_stairsdown = data.door_stairsdown
	lavou = data.lavou
	lavando = data.lavando
	piaLavavel = data.piaLavavel
	lavados = data.lavados
	task_frascos_complete = data.task_frascos_complete
	Commands.selectedSlot = data.selectedSlot
	Commands.inventory = data.inventory
	Commands.slotsel = data.slotsel
	Commands.invfull = data.invfull
	Dinor.patrulha = data.patrulha
	Dinor.distancia = data.distancia
	Dinor.vindo = data.vindo
	Dinor.bg = data.bg
	Dinor.apatrulhar = data.apatrulhar
	
	print(data.nextPerson)
	print(data.aparent1)
	print(data.local)

#Variáveis
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


# Métodos
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
