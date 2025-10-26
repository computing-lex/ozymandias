extends Node2D

@onready var Collider = $Collider
@onready var Anim = $AnimatedSprite2D

func _ready() -> void:
	Anim.play("default")

func _physics_process(delta: float) -> void:
	if visible == false:
		Collider.set_collision_layer_value(1,false)
	if visible == true:
		Collider.set_collision_layer_value(1,true)
