class_name Menu extends Control

@export var _default_focus_item : Control
var _breadcrumb : Menu

func open(breadcrumb : Menu = null):
	if breadcrumb:
		_breadcrumb = breadcrumb
		breadcrumb.close()
	visible = true
	_default_focus_item.grab_focus()

func close():
	visible = false
	if _breadcrumb:
		_breadcrumb.open()
		_breadcrumb = null
