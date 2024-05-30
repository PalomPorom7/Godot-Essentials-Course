extends Node

@onready var _menu_buttons : Control = $"Menu Buttons"

func _ready():
	_menu_buttons.open()

func _on_new_game_pressed():
	get_tree().change_scene_to_file("res://Scenes/game.tscn")

func _on_continue_pressed():
	print("Load autosave file.")

func _on_settings_pressed():
	print("Display settings menu.")

func _on_credits_pressed():
	print("Display credits.")

func _on_exit_pressed():
	print("Exit the game.")
