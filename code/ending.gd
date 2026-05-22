extends Node2D
var grade = ''
func _ready() -> void:
	$"PixilFrame0(5)".rotation = -5
	var meter = str(("%0.1f" %(Global.meters)))
	await get_tree().create_timer(3.0).timeout
	grade = 'Not Achieved(Aka 50% or lower)'
	if Global.meters > 50:
		grade = 'Achieved(Aka 50% or higher)'
	if Global.meters > 70:
		grade = 'Merit(Aka 70% or higher)'
	if Global.meters > 100:
		grade = 'Excellence(Aka 90% or higher)'
	#$RichTextLabel.text = f"[color=black] {meter} meters traveled, you have now gotten a {grade} [/color]"
	$RichTextLabel.default_color = Color(1, 1, 1, 225)
	$RichTextLabel.text = meter + 'meters traveled, you have now gotten a' + grade
	$RichTextLabel.pop()
	await get_tree().create_timer(6.0).timeout
	get_tree().change_scene_to_file("res://scenes/start.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if $"PixilFrame0(5)".rotation < 1.5:
		$"PixilFrame0(5)".rotation += 0.1
	else:
		$"PixilFrame0(5)".rotation = 1.5
