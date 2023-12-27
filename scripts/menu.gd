extends Control

@onready var index = $index
@onready var config = $config
@onready var anim = $anim
@onready var aviso = $aviso
@onready var seta_aviso = $setaAviso
@onready var lang_level = $lang_level
@onready var dif_level = $dif_level
@onready var seta_return = $setaReturn

func _ready():
	Globals.menu = true
	
	Input.set_custom_mouse_cursor(preload("res://assets/sprites/hand.png"))
	
	if config.visible:
		config.visible = false
		lang_level.visible = false
		dif_level.visible = false
		seta_return.visible = false
	if !index.visible:
		index.visible = true
	
	if Globals.dificuldade == 1:
		dif_level.text = "Easy"
	elif Globals.dificuldade == 2:
		dif_level.text = "Impossible"
	elif Globals.dificuldade == 3:
		dif_level.text = "God"
	
	if Globals.language == "pt":
		lang_level.text = "Português"
	elif Globals.language == "es":
		lang_level.text = "Español"
	elif Globals.language == "en":
		lang_level.text = "English"

func _on_exit_byn_pressed():
	get_tree().quit()

func _on_play_btn_pressed():
	anim.play("transition")
	Globals.menu = false

func _on_anim_animation_finished(_anim_name):
	get_tree().change_scene_to_file("res://panels/"+Globals.local+".tscn")
	Sound.playSong("bgmusic")

func _on_config_btn_pressed():
	index.visible = false
	config.visible = true
	aviso.visible = false
	seta_aviso.visible = false
	lang_level.visible = true
	dif_level.visible = true
	seta_return.visible = true

func _on_easy_btn_pressed():
	Globals.dificuldade = 1
	dif_level.text = "Easy"

func _on_impo_btn_pressed():
	Globals.dificuldade = 2
	dif_level.text = "Impossible"

func _on_god_btn_pressed():
	Globals.dificuldade = 3
	dif_level.text = "God"

func _on_en_btn_pressed():
	Globals.language = "en"
	lang_level.text = "English"

func _on_es_btn_pressed():
	Globals.language = "es"
	lang_level.text = "Español"

func _on_pt_btn_pressed():
	Globals.language = "pt"
	lang_level.text = "Português"

func _on_area_input_event(viewport, event, shape_idx):
	if event.is_action_pressed("click"):
		index.visible = true
		config.visible = false
		lang_level.visible = false
		dif_level.visible = false
		seta_return.visible = false
