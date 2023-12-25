extends Control

@onready var hud = $hud
@onready var bg = $bg

func _ready():
	Input.set_custom_mouse_cursor(preload("res://assets/sprites/hand.png"))
	if Globals.aparent1[1] == self.name:
		for i in self.get_child_count():
			if self.get_child(i).name == Globals.aparent1[0]:
				self.get_child(i).visible = true

	for i in 7:
		if Commands.inventory[i] != null:
			var texture = load("res://assets/sprites/"+Commands.inventory[i]+".png")
			hud.get_child(1).get_child(i).spritechange(texture)

	Dinor.bg = bg.texture
