extends Node
func outputfiles(dir):
	var f = DirAccess.get_files_at(dir)
	return f
func outputdirs(dir):
	var darray = DirAccess.get_directories_at(dir)
	return darray
func newdir(path, dirname, pth):
	var fullpath = "%s/%s" % [path, dirname]
	if DirAccess.dir_exists_absolute(path):
		if not DirAccess.dir_exists_absolute(fullpath):
			if pth == "res":
				var d = DirAccess.open("res://")
				d.make_dir(fullpath)
			elif pth == "user":
				var d = DirAccess.open("user://")
				d.make_dir(fullpath)
func newfile(path: String, filename: String, content: String = ""):
	var fullpath = "%s/%s" % [path, filename]
	if DirAccess.dir_exists_absolute(path):
		if not FileAccess.file_exists(fullpath):
			var f = FileAccess.open(fullpath, FileAccess.WRITE)
			if f:
				f.store_string(content)
				f.close()
