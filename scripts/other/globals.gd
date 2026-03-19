extends Node
var bg_col = Color("baacd8")
@onready var apps
@onready var plr2
@onready var main_window
@onready var app_buttons
@onready var windows
var app_posx = 24
var Save
var in_BIOS = true
var check1
var cobj
var app_cnt = 0
var current_count
func up_posx():
	app_posx += 64 + 13
func _process(_delta):
	if apps:
		current_count = apps.get_child_count()
	if current_count != app_cnt and not in_BIOS:
		for app in apps.get_children():
			app_cnt += 1
			app_posx += 64 + 12
			print(app_cnt)
			print(app_posx)
		
