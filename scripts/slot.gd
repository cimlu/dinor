extends Node2D

@onready var border = $border
@onready var texture = $control/texture

signal selected(name)
signal discelected
@onready var control = $control

func _on_area_input_event(_viewport, event, _shape_idx):
	if event.is_action_pressed("click"):
		selectf(true)

func spritechange(sprite):
	texture.texture = sprite
	var sizex = sprite.get_width()
	var sizey = sprite.get_height()
	var prop 
	if sizex > sizey:
		if sizex > 16:
			prop = sizex/texture.size.x
			texture.size.x = sizex/prop
			texture.size.y = sizey/prop
			texture.position.y = (16 - texture.size.y)/2
		else:
			prop = texture.size.x/sizex
			texture.size.x = sizex*prop
			texture.size.y = sizey*prop
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
