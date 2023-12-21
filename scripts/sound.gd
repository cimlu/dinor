extends Node2D

@onready var pickup = $pickup

func pauseSong(songName):
	for i in get_children().size():
		if get_child(i).name == songName:
			var song = get_child(i)
			song.playing = false
			

func playSong(songName):
	for i in get_children().size():
		if get_child(i).name == songName:
			var song = get_child(i)
			song.play()

func aumenta(songName):
	for i in get_children().size():
		if get_child(i).name == songName:
			var song = get_child(i)
			song.volume_db = song.volume_db + 15

func diminui(songName):
	for i in get_children().size():
		if get_child(i).name == songName:
			var song = get_child(i)
			song.volume_db = song.volume_db - 15
