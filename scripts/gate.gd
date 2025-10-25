extends Node2D

@export var next_level = ""

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		print(Time.get_datetime_string_from_system())
		get_tree().change_scene_to_file("res://assets/levels/"+next_level+".tscn")
