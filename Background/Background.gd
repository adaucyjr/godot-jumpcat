extends AnimatedSprite

var detail_list = ["balloons1","balloons2","broom"]

func _ready():
	animation = detail_list[randi() % detail_list.size()]
	var scaling = rand_range(0.2,0.4)
	scale.x = scaling
	scale.y = scaling

func _process(delta):
	position.x -= 300 * delta

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
