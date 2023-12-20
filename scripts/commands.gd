extends Node

var selectedSlot = null
var inventory = [null,null,null,null,null,null,null]
var slotsel = null
var invfull = null
var texture = load("res://assets/sprites/hand.png")
var toCollect

signal toClear

func _ready():
	Input.set_custom_mouse_cursor(load("res://assets/sprites/hand.png"))

func _process(delta):
	if toCollect != null:
		discollect(toCollect)

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		pass

func collect(item, pickup):
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
			if selectedSlot != null:
				selectedSlot.selectf(false)
			emit_signal("toClear")
			inventory[i] = null
			toCollect = null
			

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
