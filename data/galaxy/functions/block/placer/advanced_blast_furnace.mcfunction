execute unless entity @s[tag=placeFailed] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["customBlock","haveGUI","dropContent","advanced_blast_furnace","init"]}
execute unless entity @s[tag=placeFailed] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.advanced_blast_furnace"}'} replace

execute unless entity @s[tag=placeFailed] run summon minecraft:armor_stand ~ ~1 ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["fake_block","advanced_blast_furnace_fake_block","init"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10300,fakeBlock:1}}]}
execute unless entity @s[tag=placeFailed] run function galaxy:block/directional
tag @e[tag=fake_block,tag=init] remove init

scoreboard players set @e[tag=advanced_blast_furnace,tag=init] guiMode 0
scoreboard players set @e[tag=advanced_blast_furnace,tag=init] workStatus 0
scoreboard players set @e[tag=advanced_blast_furnace,tag=init] setGuiCover 1
scoreboard players set @e[tag=advanced_blast_furnace,tag=init] setSmelt 1
scoreboard players set @e[tag=advanced_blast_furnace,tag=init] setProcess 1
scoreboard players set @e[tag=advanced_blast_furnace,tag=init] setProgress 1
scoreboard players remove @e[tag=advanced_blast_furnace,tag=init] workProc1 0
tag @e[tag=advanced_blast_furnace,tag=init] remove init

execute if entity @s[tag=placeFailed] as @a[tag=triggerPlaceBlock] run function galaxy:block/give/advanced_blast_furnace

execute unless entity @s[tag=placeFailed] run playsound block.metal.place block @a ~ ~ ~ 1 0.8
