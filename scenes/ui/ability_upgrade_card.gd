extends PanelContainer

@onready var name_label: Label =$%NameLabel
@onready var description_laber: Label = $%DescriptionLabel


func set_ability_upgrade(upgrade: AbilityUpgrade):
	name_label.text = upgrade.name
	description_laber.text = upgrade.description
	
