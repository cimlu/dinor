extends Node2D

@export var destiny = ""

func _on_area_input_event(_viewport, event, _shape_idx):
	if event.is_action_pressed("click"):
		if !Globals.paused:
			get_tree().change_scene_to_file("res://panels/"+destiny+".tscn")
			Sound.playSong("arrow")
			Globals.local = destiny
			if Globals.cooldown != 0:
				Globals.cooldown -= 1
			if Dinor.patrulha:
				Dinor.movement()

func _on_area_mouse_entered():
	if !Globals.paused:
		Input.set_custom_mouse_cursor(preload("res://assets/sprites/cursorExit.png"))

func _on_area_mouse_exited():
	if !Globals.paused:
		if Commands.selectedSlot == null:
			Input.set_custom_mouse_cursor(preload("res://assets/sprites/hand.png"))
		else:
			Input.set_custom_mouse_cursor(Commands.texture)
