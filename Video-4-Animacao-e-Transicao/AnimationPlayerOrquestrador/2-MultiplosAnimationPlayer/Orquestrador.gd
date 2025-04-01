extends Node

@onready var menu_principal = $MenuPrincipal
@onready var tela_de_opcoes = $TelaDeOpcoes
@onready var animation_player = $AnimationPlayer

func _on_opcoes_pressed() -> void:
	animation_player.play("MenuPrincipal->TelaDeOpcoes")

func _on_menu_principal_pressed() -> void:
	animation_player.play("TelaDeOpcoes->MenuPrincipal")
	
	
