extends Node2D

@onready var Bar = $ProgressBar
@onready var Percent = $ProgressText
@onready var Anim = $AnimationPlayer

var next_scene = "res://assets/levels/title.tscn"

func _ready() -> void:
	Anim.play("Loading")

func _physics_process(delta: float) -> void:
	Percent.text = str(floor(Bar.visible_ratio*100))+"%"

func intro_complete():
	get_tree().change_scene_to_file(next_scene)


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "Loading":
		intro_complete()
