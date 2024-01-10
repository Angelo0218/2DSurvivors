extends Node

var current_experience = 0

func _ready():
	GameEvents.experience_vial_collected.connect(on_experience_vial_collected)

func incrment_experience(number: float):
	current_experience += number
	print(current_experience)

func on_experience_vial_collected(number:float):
	incrment_experience(number)
