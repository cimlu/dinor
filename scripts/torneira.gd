extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		get_tree().change_scene_to_file("res://panels/pia.tscn")


func _on_area_mouse_exited():
	pass # Replace with function body.


func _on_area_mouse_entered():
	pass # Replace with function body.
