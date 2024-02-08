extends AnimatableBody2D


@export var speed: float = 4.0

func _physics_process(delta):
	if Input.is_action_pressed("left"):
		position.x -= speed
	if Input.is_action_pressed("right"):
		position.x += speed
