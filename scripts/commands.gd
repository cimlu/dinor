extends Node

var selectedSlot = null
var inventory = [null,null,null,null,null,null,null]
var slotsel = null
var invfull = null
var texture = load("res://assets/sprites/hand.png")

func _ready():
	Input.set_custom_mouse_cursor(load("res://assets/sprites/hand.png"))

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		pass

func collect(item):
	for i in 7:
		if inventory[i] == null:
			slotsel = i
			break
		elif i != 6:
			i=i+1
		else:
			invfull = true
			break
	
	inventory[slotsel] = item.name
	
	if invfull == true:
		print("INVENTORY FULL")
	else:
		print(inventory)

func discollect(item):
	for i in 7:
		if inventory[i] == item:
			inventory[i] = null
			selectedSlot.textureClear()
			
func mousechange(item):
	if item.texture != null and selectedSlot:
		if selectedSlot != null:
			Input.set_custom_mouse_cursor(item.texture)
			texture = item.texture
		else:
			Input.set_custom_mouse_cursor(load("res://assets/sprites/hand.png"))
			texture = load("res://assets/sprites/hand.png")
		print(item.texture)
		
	if selectedSlot == null:
		Input.set_custom_mouse_cursor(load("res://assets/sprites/hand.png"))

func tem(item):
	for i in 7:
		if inventory[i] == item:
			return true
			print("TEM")
	return false
