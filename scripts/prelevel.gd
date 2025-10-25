extends Node2D

@onready var Anim = $AnimationPlayer

func _ready() -> void:
	Anim.play("reveal")
