extends Node2D

var next_scene = "res://assets/levels/prelevel1.tscn"
@onready var Audio = $AudioStreamPlayer
@onready var Anim = $AnimationPlayer

func _ready() -> void:
	Audio.play()

func start_game():
	get_tree().change_scene_to_file(next_scene)


func _on_audio_stream_player_finished() -> void:
	Audio.play()


func _on_dev_button_pressed() -> void:
	if Anim.is_playing() == false:
		Anim.play("startgame")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	if anim_name == "startgame":
		start_game()
