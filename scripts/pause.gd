extends CanvasLayer

func _ready():
	visible = false

func _process(delta):
	if Input.is_action_just_pressed("esc"):
		if !Globals.menu:
			if visible:
				visible = false
				get_tree().paused = false
			else:
				visible = true
				get_tree().paused = true

func _on_resume_btn_pressed():
	visible = false
	get_tree().paused = false

func _on_menu_btn_pressed():
	Sound.pauseSong("foots")
	Sound.pauseSong("bgmusic")
	get_tree().change_scene_to_file("res://panels/menu.tscn")
	visible = false
	get_tree().paused = false

func _on_reset_btn_pressed():
	Globals.clear()
