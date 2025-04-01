extends Control

@onready var animation_player : AnimationPlayer = $AnimationPlayer
@onready var timer : Timer = $Timer
@onready var label : Label = $Label

func _ready() -> void:
	
	animation_player.play("1")
	
	await timer.timeout
	
	animation_player.play("2", 15) # 15 segundos de blend

func _process(delta: float) -> void:
	label.text = str(timer.time_left).pad_decimals(2)

func _on_animation_player_current_animation_changed(name: String) -> void:
	pass # Replace with function body.

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	pass # Replace with function body.

func _on_animation_player_animation_started(anim_name: StringName) -> void:
	pass # Replace with function body.
