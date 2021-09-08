execute store result score #debug.re-give.itemCount Meta run clear @s minecraft:stone_sword{CustomData:{galaxy:{id:"component",tag:{laser_core:{Type:3}}}}} 1

execute if score #debug.re-give.itemCount Meta matches 1.. run function galaxy:component/give/laser_core_t3

execute if data entity @s Inventory[{tag:{CustomData:{galaxy:{id:"component",tag:{laser_core:{Type:3}}}}}}] run function galaxy:debug/re-give/component/laser_core_t3
