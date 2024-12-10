extends ColorRect

@onready var credits_scroll : ScrollContainer = $ScrollContainer

func _ready() -> void:
	var tween = create_tween()
	
	tween.tween_property(
		credits_scroll,
		"scroll_vertical",
		3000,
		10.0
	)
	tween.finished.connect(_acabou)
	tween.play()

func _acabou() -> void:
	print("acabou!")
