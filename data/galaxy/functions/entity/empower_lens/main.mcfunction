# return item
execute if entity @s[predicate=!minecraft:hand_main-empty,predicate=!galaxy:tool/hand_main-wrench,predicate=!galaxy:tool/hand_main-crowbar] run tag @s add returnItem
execute if entity @s[tag=returnItem] run data modify storage cu:give item set from entity @s HandItems[0]
execute if entity @s[tag=returnItem] run item replace entity @s weapon.mainhand with air
execute if entity @s[tag=returnItem] as @a[tag=ThisPlayer,gamemode=!creative] run function cu:give/main
tag @s[tag=returnItem] remove returnItem

# crowbar
execute if entity @s[tag=crowbarEmpowerLensDestruct] run function galaxy:entity/empower_lens/destruct
