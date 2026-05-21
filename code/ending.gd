extends Node2D
var grade = ''
func _ready() -> void:
	var meter = str(("%0.1f" %(Global.meters)))
	grade = 'Not Achieved'
	if Global.meters > 50:
		grade = 'Achieved'
	if Global.meters > 70:
		grade = 'Merit'
	if Global.meters > 100:
		grade = 'Excellence'
	$RichTextLabel.text = meter + ' meters traveled, you have now gotten a ' + grade


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
