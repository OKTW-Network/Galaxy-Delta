execute if entity @s[tag=!galaxy._tag.blockPlaceFailed] run function galaxy:block/place/facing/horizontal
execute if entity @s[tag=!galaxy._tag.blockPlaceFailed] run function galaxy:block/set_block/coke_furnace
execute if entity @s[tag=!galaxy._tag.blockPlaceFailed] run playsound block.metal.place block @a ~ ~ ~ 1 0.8

execute if entity @s[tag=galaxy._tag.blockPlaceFailed] as @a[tag=galaxy._tag.ThisPlaceBlock,gamemode=!creative] run function galaxy:block/give/coke_furnace
