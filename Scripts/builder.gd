extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$menu_panel/TabBar.set_current_tab(1)



func _on_tab_bar_tab_changed(tab):
	print(tab)
	if tab == 0:
		get_tree().change_scene_to_file("res://Scenes/manager.tscn")
	elif tab == 2:
		get_tree().change_scene_to_file("res://Scenes/tracker.tscn")
