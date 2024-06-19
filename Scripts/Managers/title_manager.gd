extends SceneManager

@onready var _menu_buttons : Control = $"Menu Buttons"
@onready var _continue_button : Button = $"Menu Buttons/Continue"

func _ready():
	super._ready()
	_menu_buttons.open()
	if File.save_file_exists():
		_continue_button.disabled = false
		_continue_button.grab_focus()

func _on_new_game_pressed():
	File.new_game()
	change_scenes("res://Scenes/game.tscn")

func _on_continue_pressed():
	File.load_game()
	change_scenes("res://Scenes/game.tscn")

func _on_settings_pressed():
	_settings_menu.open(_menu_buttons)

func _on_credits_pressed():
	change_scenes("res://Scenes/credits.tscn")

func _on_exit_pressed():
	Music.fade_out()
	await _fade.to_black()
	get_tree().quit()
