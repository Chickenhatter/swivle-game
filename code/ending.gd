extends Node2D
var grade = ''
func _ready() -> void:
	var meter = str(("%0.1f" %(Global.meters)))
	grade = 'Not Achieved(Aka 50% or lower)'
	if Global.meters > 50:
		grade = 'Achieved(Aka 50% or higher)'
	if Global.meters > 70:
		grade = 'Merit(Aka 70% or higher)'
	if Global.meters > 100:
		grade = 'Excellence(Aka 90% or higher)'
	$RichTextLabel.text = meter + ' meters traveled, you have now gotten a ' + grade


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	await get_tree().create_timer(4.0).timeout
	get_tree().change_scene_to_file("res://scenes/start.tscn")
