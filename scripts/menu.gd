extends Control

@onready var timer = $Timer



func _on_start_pressed():
	timer.start()
	
func _on_quit_pressed():
	get_tree().quit()


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/game.tscn")
