extends AnimatableBody2D


@export var speed: float = 4.0

var can_move_left := true
var can_move_right := true

func _physics_process(delta):
	if Input.is_action_pressed("left") and can_move_left:
		position.x -= speed
	if Input.is_action_pressed("right") and can_move_right:
		position.x += speed

func _on_area_2d_body_entered(body):
	if body.name == "LeftLine":
		can_move_left = false
	elif body.name == "RightLine":
		can_move_right = false

func _on_area_2d_body_exited(body):
	if body.name == "LeftLine":
		can_move_left = true
	elif body.name == "RightLine":
		can_move_right = true
