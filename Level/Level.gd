extends Node

const OBSTACLE = preload("res://Obstacles/Obstacles.tscn")
const BACKGROUND = preload("res://Background/Background.tscn")
const FOREGROUND = preload("res://Foreground/Foreground.tscn")

func _on_Timer_timeout():
	var obstacle = OBSTACLE.instance()
	add_child(obstacle)
	$Timer.wait_time = rand_range(1,3)


func _on_ScoreTimer_timeout():
	Global.current_score += 1
	$ScoreLabel.text = "Score: " + str(Global.current_score)


func _process(delta):
	if Input.is_action_just_pressed("ui_cancel"):
		get_tree().change_scene("res://TitleScreen/TitleScreen.tscn")


func _on_BackgroundTimer_timeout():
	var background = BACKGROUND.instance()
	add_child(background)
	background.position = $BackgroundStartPositions.get_children()[randi() % $BackgroundStartPositions.get_child_count()].position


func _on_ForegroundTimer_timeout():
	var foreground = FOREGROUND.instance()
	add_child(foreground)
	foreground.position = $ForegroundStartPositions.get_children()[randi() % $ForegroundStartPositions.get_child_count()].position
