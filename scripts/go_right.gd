extends Node2D

func _ready() -> void:
	visible = false

func _on_area_area_entered(area: Area2D) -> void:
	if area.get_parent().is_in_group("Enemies"):
		area.get_parent().heading = "Right"
