extends Node2D


func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/main_menu.tscn")

func _on_start_game_pressed():
	var global = get_node("/root/Global")
	global.player_name = $VBoxContainer/player_name.text
	global.difficulty = $VBoxContainer/game_difficulty.text
	print(global.player_name, global.difficulty)
	get_tree().change_scene_to_file("res://Scenes/manager.tscn")
