extends Node2D

@onready var Collider = $Collider

func _physics_process(delta: float) -> void:
	if visible == false:
		Collider.set_collision_layer_value(1,false)
	if visible == true:
		Collider.set_collision_layer_value(1,true)
