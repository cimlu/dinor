extends Node2D

@onready var sprite = $sprite

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass



func _on_area_2d_mouse_entered():
	sprite.texture = preload("res://assets/sprites/door_staff_open.png")


func _on_area_mouse_exited():
	sprite.texture = preload("res://assets/sprites/door_staff_close.png")
