class_name Collectable
extends Area3D

@export var score_amount: int = 10

@export_group("Children")
@export var animation_player: AnimationPlayer


func _ready() -> void:
	animation_player.play("collectable_idle_loop")
	body_entered.connect(_on_body_entered)


func collect(player: PlayerController) -> void:
	player.score += score_amount
	queue_free()


func _on_body_entered(other: PhysicsBody3D) -> void:
	if other is not PlayerController: return
	collect(other)
