extends SceneManager

@onready var _menu_buttons : Control = $"Menu Buttons"

func _ready():
	super._ready()
	_menu_buttons.open()

func _on_new_game_pressed():
	change_scenes("res://Scenes/game.tscn")

func _on_continue_pressed():
	print("Load autosave file.")

func _on_settings_pressed():
	_settings_menu.open(_menu_buttons)

func _on_credits_pressed():
	print("Display credits.")

func _on_exit_pressed():
	print("Exit the game.")
