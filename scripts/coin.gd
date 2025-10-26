extends Node2D

var collected = false
@onready var Anim = $AnimatedSprite2D

func _ready() -> void:
	Anim.play("default")

func _on_area_body_entered(body: Node2D) -> void:
	if collected == false:
		if body.is_in_group("Player"):
			body.coinsound()
			Global.Coins += 1
			collected = true
			queue_free()
