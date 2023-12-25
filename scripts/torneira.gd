extends Node2D

@onready var frascos = $frascos

func _ready():
	if Globals.lavou == true:
		if Commands.tem("frascos") or Globals.task_frascos_complete:
			frascos.visible = false
		else:
			frascos.visible = true
			frascos.texture = load("res://assets/sprites/frascos.png")
	else:
		frascos.visible = true

func _on_area_input_event(_viewport, event, _shape_idx):
	if event.is_action_pressed("click"):
		if Globals.piaLavavel:
			get_tree().change_scene_to_file("res://panels/pia.tscn")


func _on_area_mouse_exited():
	pass # Replace with function body.


func _on_area_mouse_entered():
	pass # Replace with function body.
