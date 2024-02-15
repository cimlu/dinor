extends Control

@onready var bg = $bg

func _ready():
	bg.texture = load("res://assets/bgs/credits"+Globals.language+".png")

func _on_exit_byn_pressed():
	Globals.clear()
