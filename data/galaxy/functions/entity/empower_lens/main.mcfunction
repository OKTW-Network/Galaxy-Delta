# return item
execute if entity @s[predicate=!minecraft:hand_main-empty,predicate=!galaxy:tool/hand_main-wrench,predicate=!galaxy:tool/hand_main-crowbar] run tag @s add returnItem
execute if entity @s[tag=returnItem] run data modify storage cu:item input set from entity @s HandItems[0]
execute if entity @s[tag=returnItem] run item replace entity @s weapon.mainhand with minecraft:air
execute if entity @s[tag=returnItem] run data modify storage cu:item owner set from entity @a[tag=ThisPlayer,gamemode=!creative,limit=1]
execute if entity @s[tag=returnItem] as @a[tag=ThisPlayer,gamemode=!creative] at @s run function cu:item/give
tag @s[tag=returnItem] remove returnItem

# crowbar
execute if entity @s[tag=crowbarEmpowerLensDestruct] run function galaxy:entity/empower_lens/destruct
