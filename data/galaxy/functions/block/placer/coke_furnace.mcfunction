execute unless entity @s[tag=placeFailed] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["customBlock","haveGUI","dropContent","coke_furnace","init"]}
execute unless entity @s[tag=placeFailed] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.coke_furnace"}'} replace

execute unless entity @s[tag=placeFailed] run summon minecraft:armor_stand ~ ~1 ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["fake_block","coke_furnace_fake_block","init"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10200,fakeBlock:1}}]}
execute unless entity @s[tag=placeFailed] run function galaxy:block/directional
tag @e[tag=fake_block,tag=init] remove init

scoreboard players set @e[tag=coke_furnace,tag=init] statesLit 0
scoreboard players set @e[tag=coke_furnace,tag=init] workStatus 0
scoreboard players set @e[tag=coke_furnace,tag=init] workProcStatus 0
scoreboard players set @e[tag=coke_furnace,tag=init] workProcStatus0 0
scoreboard players set @e[tag=coke_furnace,tag=init] workProcStatus1 0
scoreboard players set @e[tag=coke_furnace,tag=init] workProcStatus-1 0
scoreboard players set @e[tag=coke_furnace,tag=init] workProc1 0
scoreboard players set @e[tag=coke_furnace,tag=init] workProc1Status 0
scoreboard players set @e[tag=coke_furnace,tag=init] workProc1Prog 0
scoreboard players set @e[tag=coke_furnace,tag=init] guiMode 0
execute as @e[tag=coke_furnace,tag=init] run function galaxy:gui/coke_furnace/update
tag @e[tag=coke_furnace,tag=init] remove init

execute if entity @s[tag=placeFailed] as @a[tag=triggerPlaceBlock] run function galaxy:block/give/coke_furnace

execute unless entity @s[tag=placeFailed] run playsound block.metal.place block @a ~ ~ ~ 1 0.8
