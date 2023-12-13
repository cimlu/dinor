extends Node2D

@onready var sprite = $control/sprite

# Called when the node enters the scene tree for the first time.
func _ready():
	sprite.mouse_filter = "Ignore"


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
