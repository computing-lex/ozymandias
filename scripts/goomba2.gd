extends CharacterBody2D

const SPEED = 40

var dead = false
var heading = "Right"

@onready var Hitzone = $HitZone
@onready var KillZone = $KillZone
@onready var DeathTimer = $Timer
@onready var Visual = $Visual

func _ready() -> void:
	Visual.play("default")

func _physics_process(delta: float) -> void:
	if visible == true:
		if heading == "Right":
			velocity.x = SPEED
			Visual.scale.x = -1
		elif heading == "Left":
			velocity.x = -SPEED
			Visual.scale.x = 1
		if dead == false:
			move_and_slide()

func _on_kill_zone_body_entered(body: Node2D) -> void:
	if visible == true:
		if dead == false:
			if body.is_in_group("Player"):
				body.dead = true
				body.to_death()

func death():
	Visual.play("dead")
