class_name ScoreCounterController
extends HBoxContainer


@export var player: PlayerController

@export_group("Children")
@export var label: Label


func _ready() -> void:
	player.score_changed.connect(_on_score_changed)
	label.text = "0"
	
	
func _on_score_changed(_previous: int, new: int) -> void:
	label.text = str(new)
