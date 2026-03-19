extends Control

var sc = load("res://scripts/apps/settings/app.gd")
func _ready():
	if app:
		app.appinit(sc)
