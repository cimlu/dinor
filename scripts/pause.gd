extends CanvasLayer

func _ready():
	visible = false

func _process(delta):
	if Input.is_action_just_pressed("esc"):
		if !Globals.menu:
			if visible:
				despause()
			else:
				pause()

func despause():
	visible = false
	Globals.paused = false

func pause():
	visible = true
	Globals.paused = true
	Input.set_custom_mouse_cursor(preload("res://assets/sprites/hand.png"))
	print(Commands.inventory)

func _on_resume_btn_pressed():
	despause()

func _on_menu_btn_pressed():
	Sound.pauseSong("foots")
	Sound.pauseSong("bgmusic")
	get_tree().change_scene_to_file("res://panels/menu.tscn")
	visible = false
	get_tree().paused = false
	Globals.paused = false

func _on_reset_btn_pressed():
	Globals.clear()
	despause()
