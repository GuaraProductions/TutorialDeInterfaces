extends Node2D

func _ready():
	var tween = create_tween()
	tween.tween_property($Sprite, "position", Vector2(300, 300), 1)
	tween.tween_property($Sprite, "modulate", Color.RED, 1)
	tween.step_finished.connect(_on_step_finished)
	
	tween.play()

func _on_step_finished(idx):
	print("Etapa", idx, "finalizada")
