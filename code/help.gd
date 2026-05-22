extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_sad_mouse_entered() -> void:
	$RichTextLabel.self_modulate.a = 1


func _on_sad_mouse_exited() -> void:
	$RichTextLabel.self_modulate.a = 0
