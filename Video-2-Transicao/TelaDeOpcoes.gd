extends PanelContainer

@export var menu_principal : PackedScene
@onready var animation_player : AnimationPlayer = $AnimationPlayer

func _on_menu_principal_pressed() -> void:
	get_tree().change_scene_to_packed(menu_principal)

func fade_out() -> void:
	animation_player.play("FadeOut")
	
func fade_in() -> void:
	animation_player.play("FadeIn")
