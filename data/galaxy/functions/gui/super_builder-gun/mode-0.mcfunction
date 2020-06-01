# GUI cover
execute unless entity @s[tag=setCover] run function galaxy:gui/super_builder-gun/check-cover
execute if entity @s[tag=setCover] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setCover] run function galaxy:gui/super_builder-gun/build-cover
tag @s[tag=setCover] remove setCover

# attribute tab
execute unless entity @s[tag=setSbldAtb] run function galaxy:gui/super_builder-gun/check-attribute
execute if entity @s[tag=setSbldAtb] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setSbldAtb] run function galaxy:gui/super_builder-gun/build-attribute
tag @s[tag=setSbldAtb] remove setSbldAtb

# attribute value
execute unless entity @s[tag=setSbldAtbValue] run function galaxy:gui/super_builder-gun/check-attribute_value
execute if entity @s[tag=setSbldAtbValue] run function galaxy:gui/remove-gui_item
execute if entity @s[tag=setSbldAtbValue] run function galaxy:gui/super_builder-gun/build-num_selection_section
tag @s[tag=setSbldAtbValue] remove setSbldAtbValue

# builder result
execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run tag @s add setResult
execute if entity @s[tag=setResult] run function galaxy:gui/super_builder-gun/build-result
tag @s[tag=setResult] remove setResult
