extends AnimatedSprite

var detail_list = ["grass1","grass2","leaf1","leaf2","leaf3","leaf4"]

func _ready():
	animation = detail_list[randi() % detail_list.size()]

func _process(delta):
	position.x -= 400 * delta

func _on_VisibilityNotifier2D_screen_exited():
	queue_free()
