extends Control

@onready var label: Label = $Label

var drawing := false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	print(get_viewport().get_mouse_position())
	
func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion && (event.button_mask & MOUSE_BUTTON_LEFT) > 0:
		label.text = str(event.relative)
