extends Node

var selectedSlot = null

var inventory = [null,null,null,null,null,null,null]

var i = 0

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		print("a")

func collect(item):
	print(item)
	var hud = get_tree().get_nodes_in_group("hud")
	var sl
	for i in 7:
		if inventory[i] == null:
			sl = i
			break
		elif inventory[i] != null:
			i=i+1
	inventory[sl]=item
			
	print(inventory)
	
