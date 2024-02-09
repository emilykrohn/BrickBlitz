extends CharacterBody2D

var speed = 350
var direction = Vector2(0.5, 1)

func _physics_process(delta):
	var ball_velocity = speed * direction * delta
	var collision = move_and_collide(ball_velocity)
	
	if collision != null:
		direction = direction.bounce(collision.get_normal())
