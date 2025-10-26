extends Node2D

@onready var Wind = $WIND

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.is_in_group("Player"):
		if Wind.playing == false:
			Wind.play()
