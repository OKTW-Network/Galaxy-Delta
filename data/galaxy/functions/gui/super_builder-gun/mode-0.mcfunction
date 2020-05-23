# GUI cover
execute unless entity @s[tag=setGuiCover] run function galaxy:gui/super_builder-gun/check-cover
execute if entity @s[tag=setGuiCover] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setGuiCover] run function galaxy:gui/super_builder-gun/build-cover

# attribute tab
execute unless entity @s[tag=setSbldAtbTab] run function galaxy:gui/super_builder-gun/check-attribute_tab
execute if entity @s[tag=setSbldAtbTab] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setSbldAtbTab] run function galaxy:gui/super_builder-gun/build-attribute_tab

# attribute value
execute unless entity @s[tag=setSbldAtbValue] run function galaxy:gui/super_builder-gun/check-attribute_value
execute if entity @s[tag=setSbldAtbValue] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setSbldAtbValue] run function galaxy:gui/super_builder-gun/build-num_selection_section
tag @s[tag=setSbldAtbValue] remove setSbldAtbValue

# builder result
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run tag @s add setResult
execute if entity @s[tag=setResult] run function galaxy:gui/super_builder-gun/build-result
tag @s[tag=setResult] remove setResult
