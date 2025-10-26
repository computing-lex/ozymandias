extends Node2D

@export var Checkpoint = 0


func _on_area_body_entered(body: Node2D) -> void:
	if visible == true:
		if body.is_in_group("Player"):
			body.CheckPoint = Checkpoint
			queue_free()
