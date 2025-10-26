extends Node2D

@onready var Anim = $AnimationPlayer
@onready var TheSpecialText = $TheSpecialText

var next_scene = "res://assets/levels/level4.tscn"

func _ready() -> void:
	TheSpecialText.text = "\n\n\n> Last Modified: "+Time.get_datetime_string_from_system().left(10)
	Anim.play("reveal")

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("I_Understand"):
		if Anim.is_playing() == false:
			get_tree().change_scene_to_file(next_scene)
