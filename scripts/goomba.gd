extends CharacterBody2D

const SPEED = 20

var dead = false
var heading = "Right"

@onready var Hitzone = $HitZone
@onready var KillZone = $KillZone
@onready var DeathTimer = $Timer
@onready var Visual = $Visual

@onready var Sound = $AudioStreamPlayer2D

func _ready() -> void:
	Visual.play("default")

func _process(delta: float) -> void:
	if randf() > 0.5:
		Sound.play()

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
	Sound.play()
	Visual.play("dead")

func _on_timer_timeout() -> void:
	Hitzone.get_child(0).disabled = false
