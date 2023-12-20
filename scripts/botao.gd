extends Node2D

@export var id = 0
var value

var valueId = 0

@onready var letra = $letra

func _ready():
	value = Globals.letras[id]
	letra.texture = load("res://assets/sprites/"+value+".png")


func _on_area_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		if valueId != 6:
			valueId += 1
			value = Globals.opcoesLetras[valueId]
			letra.texture = load("res://assets/sprites/"+value+".png")
			Globals.letras[id] = value
			Globals.verificaSenha()
		elif valueId == 6:
			valueId = 0
			value = Globals.opcoesLetras[valueId]
			letra.texture = load("res://assets/sprites/"+value+".png")
			Globals.letras[id] = value
			Globals.verificaSenha()
