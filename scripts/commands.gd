extends Node

func _process(delta):
	pass
	
func pause():
	pass
	
func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		print("a")
		
