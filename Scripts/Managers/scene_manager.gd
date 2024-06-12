class_name SceneManager extends Node

@export var _background_music : AudioStream
@warning_ignore("unused_private_class_variable")
@export var _settings_menu : Menu
@export var _fade : ColorRect

func _ready():
	Music.play_track(_background_music)
	_fade.to_clear()

func change_scenes(path : String):
	Music.fade_out()
	await _fade.to_black()
	get_tree().paused = false
	get_tree().change_scene_to_file(path)
