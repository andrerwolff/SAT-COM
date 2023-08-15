extends Node

var manager_scene = load("res://Scenes/manager.tscn")
var builder_scene = load("res://Scenes/builder.tscn")
var tracker_scene = load("res://Scenes/tracker.tscn")
var current_scene = null
 

# Called when the node enters the scene tree for the first time.
func _ready():
	current_scene = manager_scene
	$HBoxContainer/manage.grab_focus()
	$HBoxContainer/manage.disabled = true
	var instance = current_scene.instantiate()
	$scene_container.add_child(instance)


func change_scene(scene):
	if current_scene != scene:
		# Clear the container and display new scene
		$scene_container.get_child(0).queue_free()
		$scene_container.add_child(scene.instantiate())
		current_scene = scene
	else:
		print("already here")


func _on_manage_pressed():
	change_scene(manager_scene)
	$HBoxContainer/manage.disabled = true
	$HBoxContainer/build.disabled = false
	$HBoxContainer/track.disabled = false


func _on_build_pressed():
	change_scene(builder_scene)
	$HBoxContainer/manage.disabled = false
	$HBoxContainer/build.disabled = true
	$HBoxContainer/track.disabled = false


func _on_track_pressed():
	change_scene(tracker_scene)
	$HBoxContainer/manage.disabled = false
	$HBoxContainer/build.disabled = false
	$HBoxContainer/track.disabled = true
