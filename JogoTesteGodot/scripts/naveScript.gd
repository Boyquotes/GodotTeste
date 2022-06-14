extends KinematicBody2D
var speed = 500

func _ready():
	pass

func _process(delta):
	var direcao = Vector2()
	direcao.x = Input.get_action_strength("right") - Input.get_action_strength("left")
	direcao.y = Input.get_action_strength("bottom") - Input.get_action_strength("Top")
	move_and_slide(direcao * speed)
