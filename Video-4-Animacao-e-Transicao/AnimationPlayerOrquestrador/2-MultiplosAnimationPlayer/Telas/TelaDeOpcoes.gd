extends PanelContainer

@export var menu_principal : PackedScene

func _on_menu_principal_pressed() -> void:
	get_tree().change_scene_to_packed(menu_principal)
