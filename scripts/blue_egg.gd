extends Node2D

@onready var sprite = $control/sprite

func _ready():
	sprite.mouse_filter = "Ignore"
