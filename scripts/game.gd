extends Node2D

var Mode = "Normal"

func update_mode():
	if Mode == "Normal":
		for Child in get_children():
			if Child.is_in_group("Dev_Only"):
				Child.visible = false
			if Child.is_in_group("Normal_Only"):
				Child.visible = true
	if Mode == "Dev":
		for Child in get_children():
			if Child.is_in_group("Dev_Only"):
				Child.visible = true
			if Child.is_in_group("Normal_Only"):
				Child.visible = false
