extends KinematicBody2D

const GRAVITY = 10
const JUMP_SPEED = -250
var velocity = Vector2.ZERO

func _process(delta):
	velocity.y += GRAVITY
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMP_SPEED
	move_and_slide(velocity, Vector2.UP)
	
	if is_on_floor():
		$AnimatedSprite.play("walk")
	else:
		$AnimatedSprite.play("jump")

func end_game():
	if Global.current_score > Global.high_score:
		Global.high_score = Global.current_score
	Global.current_score = 0
	get_tree().change_scene("res://TitleScreen/TitleScreen.tscn")
