extends Node2D


func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")


func _on_start_game_pressed():
	get_tree().change_scene_to_file("res://Scenes/main.tscn")
