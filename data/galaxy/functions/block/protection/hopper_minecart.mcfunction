kill @s
summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:minecart"}}
summon minecraft:item ~ ~ ~ {Item:{Count:1b,id:"minecraft:hopper"}}

playsound entity.item.pickup block @a ~ ~ ~ 1 0.6
