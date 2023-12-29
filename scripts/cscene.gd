extends Area2D

@export var destiny = ""

func _on_input_event(_viewport, event, _shape_idx):
	if event.is_action_pressed("click"):
		if !Globals.paused:
			Input.set_custom_mouse_cursor(preload("res://assets/sprites/cursorExit.png"))
			if Globals.isAberto(self.name):
				get_tree().change_scene_to_file("res://panels/"+destiny+".tscn")
				Globals.local = destiny
				if Globals.cooldown != 0:
					Globals.cooldown -= 1
					print(Globals.cooldown)
				if Dinor.patrulha:
					Dinor.movement()
	
		

func _on_mouse_entered():
	if !Globals.paused:
		Input.set_custom_mouse_cursor(preload("res://assets/sprites/cursorExit.png"))
	else:
		Input.set_custom_mouse_cursor(preload("res://assets/sprites/hand.png"))

func _on_mouse_exited():
	if Commands.selectedSlot == null:
		Input.set_custom_mouse_cursor(preload("res://assets/sprites/hand.png"))
	else:
		Input.set_custom_mouse_cursor(Commands.texture)
