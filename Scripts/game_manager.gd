extends Node3D

@onready var _pause_menu : Control = $"UI/Pause Menu"
@onready var _fade : ColorRect = $UI/Fade

func _ready():
	_fade.to_clear()

func toggle_pause():
	get_tree().paused = !get_tree().paused
	if get_tree().paused:
		_pause_menu.open()
	else:
		_pause_menu.close()

func _on_exit_pressed():
	await _fade.to_black()
	get_tree().paused = false
	get_tree().change_scene_to_file("res://Scenes/title.tscn")
