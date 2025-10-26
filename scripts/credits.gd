extends Node2D

@onready var anim = $AnimationPlayer

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	anim.play("move text")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().quit()
