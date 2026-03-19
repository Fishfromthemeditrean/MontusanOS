extends Button
@onready var novium = $"../../../Novium"

func _on_pressed() -> void:
	novium.visible = !novium.visible
