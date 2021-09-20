extends Area2D

const OBSTACLES = ["couch","family","kittens","maru","pile","pizza","sloth"]

func _ready():
	randomize()
	$AnimatedSprite.play(OBSTACLES[randi() % OBSTACLES.size()])

func _process(delta):
	position.x -= 500 * delta


func _on_VisibilityNotifier2D_screen_exited():
	queue_free()


func _on_Obstacle_body_entered(body):
	body.end_game()
