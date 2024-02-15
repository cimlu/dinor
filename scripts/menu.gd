extends Control

@onready var index = $index
@onready var config = $config
@onready var anim = $anim
@onready var aviso = $aviso
@onready var seta_aviso = $setaAviso
@onready var seta_return = $setaReturn
@onready var lang_level = $lang_level
@onready var dif_level = $dif_level
@onready var lang = $lang
@onready var difficulty = $difficulty
@onready var sound = $sound
@onready var reset = $reset
@onready var navbar = $navbar

func _ready():
	Globals.menu = true
	
	get_tree().paused = false
	
	Input.set_custom_mouse_cursor(preload("res://assets/sprites/hand.png"))
	
	index.visible = true
	lang.visible = false
	reset.visible = false
	sound.visible = false
	difficulty.visible = false
	navbar.visible = false
	
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
	Globals.garyInt = false
	Globals.cataInt = false
	Globals.milaInt = false
	Globals.menu = false

func _on_anim_animation_finished(_anim_name):
	Sound.playSong("bgmusic")
	if Dinor.patrulha:
		Dinor.apatrulhar = true
	get_tree().change_scene_to_file("res://panels/"+Globals.local+".tscn")
	

func _on_config_btn_pressed():
	index.visible = false
	aviso.visible = false
	seta_aviso.visible = false
	lang.visible = true
	navbar.visible = true

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


func _on_back_btn_pressed():
	index.visible = true
	lang.visible = false
	reset.visible = false
	sound.visible = false
	difficulty.visible = false
	navbar.visible = false

func _on_lang_btn_pressed():
	lang.visible = true
	reset.visible = false
	sound.visible = false
	difficulty.visible = false


func _on_dif_btn_pressed():
	lang.visible = false
	reset.visible = false
	sound.visible = false
	difficulty.visible = true

func _on_sound_btn_pressed():
	lang.visible = false
	reset.visible = false
	sound.visible = true
	difficulty.visible = false

func _on_reset_btn_pressed():
	lang.visible = false
	reset.visible = true
	sound.visible = false
	difficulty.visible = false


func _on_reset_pressed():
	Globals.clear()
