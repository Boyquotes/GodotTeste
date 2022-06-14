extends Node2D


func _ready():
	pass

func _process(delta):
	Input.is_action_just_pressed("press")
	get_tree().change_scene("res://scenes/tela.tscn")
