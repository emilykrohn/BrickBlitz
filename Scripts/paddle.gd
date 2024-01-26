extends CharacterBody2D


@export var speed: float = 300.0

func _physics_process(delta):
	var direction = Input.get_axis("left", "right")
	if direction:
		velocity.x = direction * speed
	else:
		velocity.x = move_toward(velocity.x, 0, speed)

	move_and_slide()
