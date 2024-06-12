extends SceneManager

@onready var _pause_menu : Control = $"UI/Pause Menu"
@onready var _current_level = $Room

func load_level():
	if _current_level:
		await _fade.to_black()
		_current_level.queue_free()
	# load the next level
	await _fade.to_clear()

func toggle_pause():
	get_tree().paused = !get_tree().paused
	if get_tree().paused:
		_pause_menu.open()
	else:
		_pause_menu.close()

func _on_exit_pressed():
	change_scenes("res://Scenes/title.tscn")

func _on_settings_pressed():
	_settings_menu.open(_pause_menu)
