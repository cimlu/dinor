extends Node2D

@onready var collision = $sl

var slots
var current_slot = null
var i = 0

func _ready():
	var slqtd = collision.get_child_count()
		
	for i in 7:
		collision.get_child(i).border.visible = false
		collision.get_child(i).selected.connect(disselect)
		i=i+1

func disselect():
	for i in 7:
		collision.get_child(i).border.visible = false
		i=i+1
		Commands.selectedSlot.border.visible = true
