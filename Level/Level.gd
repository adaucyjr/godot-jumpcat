extends Node

const OBSTACLE = preload("res://Obstacles/Obstacles.tscn")

func _on_Timer_timeout():
	var obstacle = OBSTACLE.instance()
	add_child(obstacle)


func _on_Scoretimer_timeout():
	Global.current_score += 1
	$ScoreLabel.text = "Score: " + str(Global.current_score)
