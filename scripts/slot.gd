extends Node2D

@onready var border = $border
@onready var texture = $control/texture

signal selected(name)
signal discelected
@onready var control = $control

func _on_area_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		selectf(true)

func spritechange(sprite):
	texture.texture = sprite
	var sizex = sprite.get_width()
	var sizey = sprite.get_height()
	var prop = sizex/texture.size.x
	texture.size.y = sizey/prop
	texture.position.y = (16 - texture.size.y)/2

func selectf(sel):
	if border.visible:
		border.visible = false
		Commands.selectedSlot = null
	elif sel == true:
		border.visible = true
		Commands.selectedSlot = self
		selected.emit()
		
	Commands.mousechange(texture)
