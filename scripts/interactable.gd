extends Node2D

@export var Is_Miku = false
@export var villager_number = "1" # from 1 to 4
@export var is_villager = false
@export var Text1 = ""

@export var Use_States = false

@export var State = 0
@export var Max_State = 0

@export var Text2 = ""
@export var Text3 = ""
@export var Text4 = ""
@export var Text5 = ""

@onready var Visual = $Visual
@onready var Area = $Area

func _ready() -> void:
	if Is_Miku == true:
		Visual.play("default")
	elif is_villager == true:
		Visual.play(villager_number)

func _physics_process(delta: float) -> void:
	if visible == false:
		Area.monitoring = false
		Area.monitorable = false
	if visible == true:
		Area.monitoring = true
		Area.monitorable = true
