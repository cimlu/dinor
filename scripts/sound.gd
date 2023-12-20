extends Node2D

@onready var pickup = $pickup

func playSong(songName):
	for i in get_children().size():
		if get_child(i).name == songName:
			var song = get_child(i)
			song.play()
