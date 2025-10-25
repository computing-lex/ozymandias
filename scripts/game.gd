extends Node2D

var Mode = "Normal"
@onready var TheWorld = $TheWorld

func _ready():
	reset_enemies()
	for Child in get_children():
		if Child.is_in_group("Dev_Only"):
			Child.visible = false

func update_mode():
	if Mode == "Normal":
		for Child in get_children():
			if Child.is_in_group("Dev_Only"):
				Child.visible = false
			if Child.is_in_group("Normal_Only"):
				Child.visible = true
		TheWorld.material.set_shader_parameter("dev_mode",false)
	if Mode == "Dev":
		for Child in get_children():
			if Child.is_in_group("Dev_Only"):
				Child.visible = true
			if Child.is_in_group("Normal_Only"):
				Child.visible = false
		TheWorld.material.set_shader_parameter("dev_mode",true)

func reset_enemies():
	for Child in get_children():
		if Child.is_in_group("Enemies"):
			Child.queue_free()
	for Child in get_children():
		if Child.is_in_group("Spawner"):
			Child.spawn()
