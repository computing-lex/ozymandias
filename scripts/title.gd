extends Node2D

var next_scene = "res://assets/levels/prelevel1.tscn"

func _ready() -> void:
	start_game()

func start_game():
	get_tree().change_scene_to_file(next_scene)
