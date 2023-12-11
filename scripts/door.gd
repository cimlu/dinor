extends Node2D

@onready var sprite = $sprite

@export var destiny = ""
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


func _on_area_input_event(viewport, event, shape_idx):
	print("ola")
	print(event)
	if event.is_action_pressed("click"):
		get_tree().change_scene_to_file(destiny)
		print ("CLICA")
