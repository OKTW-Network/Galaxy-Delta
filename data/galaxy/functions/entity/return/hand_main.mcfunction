data modify storage cu:item input set from entity @s HandItems[0]
item replace entity @s weapon.mainhand with minecraft:air
execute as @a[tag=galaxy._tag.ThisPlayer,gamemode=!creative,limit=1] at @s run function galaxy:entity/return/give
