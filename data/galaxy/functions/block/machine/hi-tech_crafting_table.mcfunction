# block place
execute as @e[tag=hi-tech_crafting_table_placer] at @s run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["hi-tech_crafting_table","function_place"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10100,fakeBlock:1,HTct:1}}]}
kill @e[tag=hi-tech_crafting_table_placer]
execute as @e[tag=hi-tech_crafting_table,tag=function_place] at @s run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"block.galaxy.hi_tech_crafting_table"}'} replace

# block destroy
execute as @e[tag=hi-tech_crafting_table] positioned as @s if block ~ ~ ~ minecraft:air run kill @s

# gui function
execute as @e[tag=hi-tech_crafting_table] at @s positioned as @s run function galaxy:gui/hi-tech_crafting_table
