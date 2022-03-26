execute unless entity @s[tag=galaxy._tag.placeFailed] run summon minecraft:armor_stand ~ ~ ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.customBlock","galaxy.elevator"]}
execute unless entity @s[tag=galaxy._tag.placeFailed] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.elevator"}'} replace

execute unless entity @s[tag=galaxy._tag.placeFailed] run summon minecraft:armor_stand ~ ~1 ~ {CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["galaxy.customFakeBlock","galaxy.elevator"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10500}}]}

execute if entity @s[tag=galaxy._tag.placeFailed] as @a[tag=galaxy._tag.ThisPlaceBlock,gamemode=!creative] run function galaxy:block/give/elevator

execute unless entity @s[tag=galaxy._tag.placeFailed] run playsound block.metal.place block @a ~ ~ ~ 1 1.2
