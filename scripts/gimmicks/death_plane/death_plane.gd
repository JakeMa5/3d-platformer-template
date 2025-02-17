class_name DeathPlane
extends Area3D


func _ready() -> void:
	body_entered.connect(_on_body_entered)


func _on_body_entered(other: PhysicsBody3D) -> void:
	if other is PlayerController:
		other.die()
