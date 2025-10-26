extends Node2D

var audio_coin: AudioStreamPlayer2D
var is_collected = false

func on_interaction_body_entered(body):
	if body.is_in_group("Player") and not is_collected:
		is_collected = true
		$AudioStreamPlayer2D.play()
		hide()
