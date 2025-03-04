extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	if body.name == "Dino":
		self.get_node("AudioStreamPlayer2D").play()
		body.get_parent().game_running = false
		timer.start()


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/game_over.tscn")
