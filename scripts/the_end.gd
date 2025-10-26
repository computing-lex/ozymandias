extends Node2D

@onready var MoneyText = $MoneyText
@onready var Anim = $Animation
@onready var Fanfare = $FANFARE

var Time_To_Move_On = false
var next_scene = "res://assets/levels/credits.tscn"

func _ready() -> void:
	Fanfare.play()
	MoneyText.text = "You generated "+str(Global.Coins)+" x "
	Anim.play("Anim")

func _physics_process(delta: float) -> void:
	if Input.is_action_just_pressed("I_Understand"):
		if Time_To_Move_On == true:
			if Anim.is_playing() == false:
				Anim.play("fadeout")

func _on_animation_animation_finished(anim_name: StringName) -> void:
	if anim_name == "Anim":
		Time_To_Move_On = true
	if anim_name == "fadeout":
		get_tree().change_scene_to_file(next_scene)
