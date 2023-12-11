extends Node2D

@onready var sprite = $sprite

func _ready():
	if randi() % 2 == 0:
		sprite.texture = load("res://assets/sprites/blueBanana.png")
	else:
		sprite.texture = load("res://assets/sprites/banana.png")
