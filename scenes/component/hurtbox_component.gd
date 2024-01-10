extends Area2D
class_name HurtboxComponent

@export var healthComponent: Node

func _ready():
	area_entered.connect(on_area_entered)
	
func on_area_entered(other_area: Area2D):
	if not other_area is HitboxComponent: 
		return
	
	if healthComponent == null: 
		return
	
	var hitComponent = other_area as HitboxComponent
	healthComponent.damage(hitComponent.damage)
