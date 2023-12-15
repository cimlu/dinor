extends Node

var selectedSlot = null
var inventory = [null,null,null,null,null,null,null]
var i = 0
var slotsel = null
var invfull = null

func _ready():
	Input.set_custom_mouse_cursor(load("res://assets/sprites/hand.png"))

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		pass

func collect(item):
	for i in 7:
		if inventory[i] == null:
			slotsel = i
			i = 0
			break
		elif i != 6:
			i=i+1
		else:
			invfull = true

	inventory[slotsel] = item.name
	
	if invfull == true:
		print("INVENTORY FULL")
	else:
		print(inventory)

func mousechange(item):
	if item.texture != null and selectedSlot:
		if selectedSlot != null:
			Input.set_custom_mouse_cursor(item.texture)
		else:
			Input.set_custom_mouse_cursor(load("res://assets/sprites/hand.png"))
		print(item.texture)
		
	if selectedSlot == null:
		Input.set_custom_mouse_cursor(load("res://assets/sprites/hand.png"))


