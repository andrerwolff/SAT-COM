extends Node2D


func _ready():
	$menu_panel/TabBar.set_current_tab(0)

func _on_menu_button_pressed():
	print($menu_panel/MenuButton.text)
	


func _on_tab_bar_tab_changed(tab):
	print(tab)
	if tab == 1:
		get_tree().change_scene_to_file("res://Scenes/builder.tscn")
	elif tab == 2:
		get_tree().change_scene_to_file("res://Scenes/tracker.tscn")
