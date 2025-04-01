extends Node

@onready var menu_principal = $MenuPrincipal
@onready var tela_de_opcoes = $TelaDeOpcoes

func _on_opcoes_pressed() -> void:
	tela_de_opcoes.fade_in()
	menu_principal.fade_out()

func _on_menu_principal_pressed() -> void:
	tela_de_opcoes.fade_out()
	menu_principal.fade_in()
	
	
