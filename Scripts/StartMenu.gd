extends Control

func _ready():
	pass


func _on_btnStart_pressed():
	get_tree().change_scene("res://Scenes/Wold.tscn")


func _on_btnQuit_pressed():
	get_tree().quit()
