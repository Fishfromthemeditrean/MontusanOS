extends Label
func _ready():
	var dir = DirAccess.open("res://")
	if FileAccess.file_exists("res://main.tscn"):
		text += "Main Process exists.\n"
	if DirAccess.dir_exists_absolute("res://scripts/apps/"):
		text += "apps folder exists.\n"
		await get_tree().create_timer(3).timeout
		get_tree().change_scene_to_file("res://main.tscn")
	else:
		text += "apps folder not found creating new folder.\n"
		dir.make_dir_absolute("res://scripts/apps")
		text += "folder successfully created.\n"
		await get_tree().create_timer(3).timeout
		get_tree().change_scene_to_file("res://main.tscn")
