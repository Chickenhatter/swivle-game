extends Node2D
var dropping = false
var a = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dropping == true:
		a -= 0.004
		$Sprite2D.rotation_degrees = -a*200
		$Sprite2D.position.y += -a*10
		$Sprite2D.position.x += 1


func _on_button_pressed() -> void:
	dropping = true
	await get_tree().create_timer(5).timeout
	get_tree().change_scene_to_file("res://scenes/moving.tscn")
