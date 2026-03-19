extends Button
@onready var pages = $"../../../pages"
func _ready():
	pressed.connect(_on_pressed)
func _on_pressed():
	
	for page in pages.get_children():
		if page.name != name:
			page.visible = false
		else:
			page.visible = true
			continue
