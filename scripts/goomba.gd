extends CharacterBody2D

const SPEED = 20

var dead = false
var heading = "Right"

@onready var Hitzone = $HitZone
@onready var KillZone = $KillZone
@onready var DeathTimer = $Timer

func _physics_process(delta: float) -> void:
	if visible == true:
		if heading == "Right":
			velocity.x = SPEED
		elif heading == "Left":
			velocity.x = -SPEED
		if dead == false:
			move_and_slide()

func _on_kill_zone_body_entered(body: Node2D) -> void:
	if visible == true:
		if dead == false:
			if body.is_in_group("Player"):
				print(Hitzone.get_child(0))
				Hitzone.get_child(0).disabled = true
				DeathTimer.start()
				body.dead = true
				body.to_death()

func _on_hit_zone_body_entered(body: Node2D) -> void:
	if visible == true:
		if body.is_in_group("Player"):
			if body.dead == false:
				if dead == false:
					KillZone.get_child(0).disabled = true
					dead = true
					death()

func death():
	pass

func _on_timer_timeout() -> void:
	Hitzone.get_child(0).disabled = false
