extends Node2D

var next_scene = "res://assets/levels/title.tscn"

func _ready() -> void:
	intro_complete()

func intro_complete():
	get_tree().change_scene_to_file(next_scene)
