extends Node2D

@export var next_level = ""

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		print(Time.get_datetime_string_from_system())
		body.EndAnim.play("BlackFade")
		body.next_level = next_level
