execute store result score #debug.re-give.itemCount Meta run clear @s minecraft:stone_sword{CustomData:{galaxy:{id:"component",tag:{cosmetic:{Type:1}}}}} 1

execute if score #debug.re-give.itemCount Meta matches 1.. run function galaxy:component/give/cosmetic_gun_type2_railgun

execute if data entity @s Inventory[{tag:{CustomData:{galaxy:{id:"component",tag:{cosmetic:{Type:1}}}}}}] run function galaxy:debug/re-give/component/cosmetic_gun_type2_railgun
