extends Label
func _ready():
	if name == "DeName": text = OS.get_model_name()
	if name == "OSName": text = OS.get_name()
	if name == "CPUC": text = str(OS.get_processor_count())
	if name == "DevV": text = str(OS.get_version())
