extends Node

var current_score = 0
var high_score = 0

func end_game():
	if Global.current_score > Global.high_score:
		Global.high_score = Global.current_score
	Global.current_score = 0
	get_tree().paused = true
	$AudioStreamPlayer.stop()
	$EndGameTimer.start()


func _on_EndGameTimer_timeout():
	get_tree().paused = false
	$AudioStreamPlayer.play()
	get_tree().change_scene("res://TitleScreen/TitleScreen.tscn")
