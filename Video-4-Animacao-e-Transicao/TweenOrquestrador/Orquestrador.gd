extends Node

@onready var menu_principal = $MenuPrincipal
@onready var tela_de_opcoes = $TelaDeOpcoes
@onready var node = $AnimationPlayer

func _animacao_tela(tela_ha_apagar : Control, 
					tela_ha_aparecer: Control) -> void:
	var tween : Tween = create_tween().set_parallel(true)
	
	tela_ha_apagar.modulate = Color.WHITE
	tela_ha_aparecer.modulate = Color.TRANSPARENT
	
	tela_ha_apagar.visible = true
	tela_ha_aparecer.visible = true
	
	tween.tween_property(
		tela_ha_apagar,
		"modulate",
		Color.TRANSPARENT,
		1
	)
	tween.tween_property(
		tela_ha_aparecer,
		"modulate",
		Color.WHITE,
		1
	)
	
	tween.play()
	
	await tween.finished
	
	tela_ha_apagar.visible = false
	tela_ha_aparecer.visible = true

func _on_opcoes_pressed() -> void:
	_animacao_tela(menu_principal, tela_de_opcoes)

func _on_menu_principal_pressed() -> void:
	_animacao_tela(tela_de_opcoes, menu_principal)
	
