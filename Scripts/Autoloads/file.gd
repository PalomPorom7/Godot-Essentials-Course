extends Node

var settings : Settings
var progress : Progress
# var achievements... etc

func _ready():
	settings = Settings.new()
	progress = Progress.new()
