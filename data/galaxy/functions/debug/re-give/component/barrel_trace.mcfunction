execute store result score #debug.re-give.itemCount Meta run clear @s minecraft:stone_sword{CustomData:{galaxy:{id:"component",tag:{barrel:{Type:3}}}}} 1

execute if score #debug.re-give.itemCount Meta matches 1.. run function galaxy:component/give/barrel_trace

execute if data entity @s Inventory[{tag:{CustomData:{galaxy:{id:"component",tag:{barrel:{Type:3}}}}}}] run function galaxy:debug/re-give/component/barrel_trace
