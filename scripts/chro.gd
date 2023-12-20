extends Node2D

@onready var lavando = $lavando

func _on_lavando_timeout():
	Globals.lavou = true
