extends Node2D

var next_scene = "res://assets/levels/level1.tscn"

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("I_Understand"):
		get_tree().change_scene_to_file(next_scene)
