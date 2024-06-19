extends SceneManager

@export var _slow_speed : float = 32
@export var _fast_speed : float = 512
@onready var _scroll_speed : float = _slow_speed
@onready var _scroll : Control = $Scroll
@onready var _scroll_size : float = -_scroll.size.y + DisplayServer.window_get_size().y
var _is_at_end : bool

func _process(delta : float):
	if _is_at_end:
		return
	_scroll.position.y -= _scroll_speed * delta
	if _scroll.position.y < _scroll_size:
		_is_at_end = true
		_scroll.position.y = _scroll_size

func return_to_title():
	change_scenes("res://Scenes/title.tscn")

func _input(event : InputEvent):
	if event.is_action_pressed("jump"):
		if _is_at_end:
			return_to_title()
		else:
			_scroll_speed = _fast_speed
	elif event.is_action_released("jump"):
		_scroll_speed = _slow_speed
