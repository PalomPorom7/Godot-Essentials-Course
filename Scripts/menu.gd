extends Control

@export var _default_focus_item : Control

func open():
	visible = true
	_default_focus_item.grab_focus()

func close():
	visible = false
