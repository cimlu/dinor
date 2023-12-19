extends Node2D

@onready var collision = $sl

var slots
var current_slot = null

func _ready():		
	for i in 7:
		collision.get_child(i).border.visible = false
		collision.get_child(i).selected.connect(disselect)
		i=i+1

func disselect():
	for i in 7:
		collision.get_child(i).border.visible = false
		i=i+1
		Commands.selectedSlot.border.visible = true
	Input.set_custom_mouse_cursor(load("res://assets/sprites/hand.png"))
