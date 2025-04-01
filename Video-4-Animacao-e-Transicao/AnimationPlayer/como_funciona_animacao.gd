extends Node2D

@onready var animation_player = $AnimationPlayer

func _ready():
	var tween = get_tree().create_tween()

	tween.tween_method(_set_rotation, 0, 360, 1.5)
	
	tween.play()
	
	
func _set_rotation(value) -> void:
	print("_set_rotation \'value\': ", value)
	$Sprite2D.rotation = value
