extends Node2D

var Snake_Enemy = preload("res://assets/entities/snake_enemy.tscn")
var Scorpion_Enemy = preload("res://assets/entities/scorpion_enemy.tscn")

var Spawn

@export var Enemy_Type = ""

func _ready():
	visible = false

func spawn():
	match Enemy_Type:
		"Snake":
			Spawn = Snake_Enemy.instantiate()
		"Scorpion":
			Spawn = Scorpion_Enemy.instantiate()
	Spawn.position = position
	get_parent().add_child(Spawn)
