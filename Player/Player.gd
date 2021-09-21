extends KinematicBody2D

const GRAVITY = 1.2
const JUMP_SPEED = -550
var velocity = Vector2.ZERO

func _process(delta):
	if is_on_floor():
		$AnimatedSprite.play("walk")
		if Input.is_action_just_pressed("jump"):
			velocity.y = JUMP_SPEED
			$AudioStreamPlayer.play()
	else:
		$AnimatedSprite.play("jump")
		velocity.y += GRAVITY
	
	move_and_slide(velocity, Vector2.UP)
