extends Button
var scn = preload("res://scripts/apps/settings/settings.tscn")
var ap = null
var aicon = preload("res://scripts/apps/settings/app.png")
func main():
	
	var btn = Button.new()
	globals.apps.add_child(btn)
	btn.name = "Settings"
	btn.icon = aicon
	btn.flat = true
	btn.size = Vector2(64, 64)
	# Set button X position from global
	btn.position.x = globals.app_posx
	btn.position.y = 20
	globals.up_posx()  # Update for next button
	btn.pressed.connect(_on_pressed)
	# Create label as child of button
	var lbl = Label.new()
	btn.add_child(lbl)
	lbl.text = btn.name
	
	# Wait one frame for positioning to settle

	# Position label RELATIVE to button (local coordinates)
	# Center the label below the button (assuming 64x64 button)
	lbl.position = Vector2(0, 64)  # 64 pixels down from button top
	
	# Optional: Center the text horizontally
	lbl.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	lbl.size.x = btn.size.x  # Match button width


func _on_pressed() -> void:
	if ap == null:
		ap = scn.instantiate()
		globals.windows.add_child(ap)
	else:
		ap.visible = true
