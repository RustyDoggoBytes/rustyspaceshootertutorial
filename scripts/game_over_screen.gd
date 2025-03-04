extends Control

@onready var audio_stream_player = $AudioStreamPlayer

func _on_restart_button_pressed():
	get_tree().reload_current_scene()

func set_score(value):
	$Panel/Score.text = "Score: " + str(value)

func set_high_score(value):
	$Panel/HighScore.text = "Hi-Score: " + str(value)
	
func play_gameover():
	audio_stream_player.play()
	
