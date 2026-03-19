extends Button
@onready var pages = $"../pages"
@onready var it = $"../"
func _on_pressed() -> void:
	it.visible = false# Replace with function body.
	for p in pages.get_children():
		p.visible = false
