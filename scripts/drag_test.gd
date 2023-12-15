extends Node2D

var dragging = false
var of = Vector2(0,0)
var hola

func _process(delta):
	if dragging:
		position = get_viewport().get_mouse_position() - of
	

func _on_area_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click") and event is InputEventMouseButton and event.button_index == MOUSE_BUTTON_LEFT:
		if event.pressed:
			of = event.position - position
			dragging = true
			print(of)
			print(event.position)
			print(position)
		else:
			dragging = false
