extends Control

@onready var hud = $hud

func _ready():
	Input.set_custom_mouse_cursor(preload("res://assets/sprites/hand.png"))
	for i in 7:
		if Commands.inventory[i] != null:
			var texture = load("res://assets/sprites/"+Commands.inventory[i]+".png")
			hud.get_child(1).get_child(i).spritechange(texture)
