extends Node2D

const PRE_ENEMY = preload("res://scenes/inimigo.tscn")
var time = 0

func _ready():
	pass

func _process(delta):
	time += delta
	if time >0.5:
		spawn() 
		time = 0
	
func spawn():
	var e = PRE_ENEMY.instance()
	e.position = Vector2(530, rand_range(20, 580))
	add_child(e)
