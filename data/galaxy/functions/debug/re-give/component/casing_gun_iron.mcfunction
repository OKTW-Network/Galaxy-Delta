execute store result score #debug.re-give.itemCount Meta run clear @s minecraft:stone_sword{CustomData:{galaxy:{id:"component",tag:{casing_gun:{Type:2}}}}} 1

execute if score #debug.re-give.itemCount Meta matches 1.. run function galaxy:component/give/gun_casing_iron

execute if data entity @s Inventory[{tag:{CustomData:{galaxy:{id:"component",tag:{casing_gun:{Type:2}}}}}}] run function galaxy:debug/re-give/component/casing_gun_iron
