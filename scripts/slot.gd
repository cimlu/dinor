extends Node2D

@onready var border = $border

signal selected(name)

func _on_area_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		print("yes")
		selectf()


func selectf():
	print(Commands.selectedSlot)
	if border.visible:
		border.visible = false
		print(Commands.selectedSlot)
	else:
		border.visible = true
		Commands.selectedSlot = self
		selected.emit()
