extends Sprite2D

@onready var drag_test_2 = $".."

var dragging = false
var of = Vector2(0,0)

func _process(delta):
	if dragging:
		position = get_viewport().get_mouse_position()

func _on_btn_button_down():
	print("p")
	dragging = true
	of = get_viewport().get_mouse_position() - drag_test_2.position

func _on_btn_button_up():
	dragging = false

func _on_btn_pressed():
	of = get_viewport().get_mouse_position() - drag_test_2.position
