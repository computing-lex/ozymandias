extends Node2D

@onready var BootUp = $AudioStreamPlayer

var next_scene = "res://assets/levels/fake_intro.tscn"

func _ready() -> void:
	BootUp.play()

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("I_Understand"):
		get_tree().change_scene_to_file(next_scene)
