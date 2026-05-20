extends CharacterBody2D
var a = 0
var speed = 0
func _physics_process(delta: float) -> void:
	speed += 0.001                     
	$".".position.x += (0.7+speed)
	$"../Camera2D".position.x += (0.7+speed)
	if Input.is_action_pressed('ui_space'):
		if a < 0:
			a += 0.08                 
		a += 0.05                            
	elif a > 0:
		a -= 0.08
	a -= 0.025
	$".".position.y -= a
	move_and_slide()
