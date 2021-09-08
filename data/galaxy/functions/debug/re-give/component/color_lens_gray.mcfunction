execute store result score #debug.re-give.itemCount Meta run clear @s minecraft:stone_sword{CustomData:{galaxy:{id:"component",tag:{color_lens:{Type:11}}}}} 1

execute if score #debug.re-give.itemCount Meta matches 1.. run function galaxy:component/give/color_lens_gray

execute if data entity @s Inventory[{tag:{CustomData:{galaxy:{id:"component",tag:{color_lens:{Type:11}}}}}}] run function galaxy:debug/re-give/component/color_lens_gray
