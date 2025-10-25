extends Node2D

func _ready() -> void:
	visible = false

func _on_area_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		body.to_death()
