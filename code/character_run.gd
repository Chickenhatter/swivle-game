extends CharacterBody2D
var playing = true
var a = 0
var speed = 0
var meters = 0
func _physics_process(delta: float) -> void:
	if playing == true:
		meters += 0.025
		$"."  .rotation_degrees = -a*20             
		speed += 0.001
		$".".position.x += (0.7+speed)
		$"../Camera2D".position.x += (0.7+speed)
		if Input.is_action_pressed('ui_space'):
			if a < 0:
				a += 0.08                 
			a += 0.06        
		elif a        > 0:
			a                   -= 0.08
		a -= 0.03
		$".".position.y -= a
	if $".".position.x >= 4868.0:
		$".".position.x  = -200
		$"../Camera2D".position.x = -200
	move_and_slide()


func _on_character_loss_find_area_entered(area: Area2D) -> void:
	if area.name == 'loss':
		playing = false
		Global.meters = meters
		await get_tree().create_timer(3.0).timeout
		get_tree().change_scene_to_file("res://scenes/ending.tscn")
