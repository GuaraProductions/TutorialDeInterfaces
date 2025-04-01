extends TextureRect

@onready var animation_player : AnimationPlayer = $AnimationPlayer

func fade_out() -> void:
	animation_player.play("FadeOut")
	
func fade_in() -> void:
	animation_player.play("FadeIn")
