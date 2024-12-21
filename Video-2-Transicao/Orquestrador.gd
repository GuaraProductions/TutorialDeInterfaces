extends Node

@onready var menu_principal = $MenuPrincipal
@onready var tela_de_opcoes = $TelaDeOpcoes

func _on_opcoes_pressed() -> void:
	menu_principal.visible = false

func _on_menu_principal_pressed() -> void:
	menu_principal.visible = true
