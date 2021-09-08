execute store result score #debug.re-give.itemCount Meta run clear @s minecraft:stone_sword{CustomData:{galaxy:{id:"component",tag:{sight:{Type:1}}}}} 1

execute if score #debug.re-give.itemCount Meta matches 1.. run function galaxy:component/give/sight_clear

execute if data entity @s Inventory[{tag:{CustomData:{galaxy:{id:"component",tag:{sight:{Type:1}}}}}}] run function galaxy:debug/re-give/component/sight_clear
