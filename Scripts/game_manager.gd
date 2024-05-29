extends Node3D

@onready var _pause_menu : Control = $"UI/Pause Menu"

func toggle_pause():
	get_tree().paused = !get_tree().paused
	if get_tree().paused:
		_pause_menu.open()
	else:
		_pause_menu.close()

func _on_exit_pressed():
	print("Return to the title scene.")
