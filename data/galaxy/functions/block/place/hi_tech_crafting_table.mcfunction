execute if entity @s[tag=!galaxy._tag.blockPlaceFailed] run function galaxy:block/set_block/hi_tech_crafting_table
execute if entity @s[tag=!galaxy._tag.blockPlaceFailed] run playsound block.metal.place block @a ~ ~ ~ 1 1.1

execute if entity @s[tag=galaxy._tag.blockPlaceFailed] as @a[tag=galaxy._tag.ThisPlaceBlock,gamemode=!creative] run function galaxy:block/give/hi_tech_crafting_table
