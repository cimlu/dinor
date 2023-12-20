extends Control

func _on_exit_byn_pressed():
	get_tree().quit()

func _on_play_btn_pressed():
	get_tree().change_scene_to_file("res://panels/bath.tscn")
	Sound.playSong("bgmusic")
