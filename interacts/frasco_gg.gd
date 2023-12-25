extends Node2D

@onready var sprite = $sprite

func _ready():
	if Globals.lavados == 5:
		queue_free()

func _on_area_input_event(_viewport, event, _shape_idx):
	if event.is_action_pressed("click"):
		lavar()

			
func lavar():
	if Globals.alavar == null:
		Globals.alavar = self
		print(Globals.alavar)
