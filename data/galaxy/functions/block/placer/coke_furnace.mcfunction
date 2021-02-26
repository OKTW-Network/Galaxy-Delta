execute unless entity @s[tag=placeFailed] run summon minecraft:armor_stand ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["customBlock","galaxy.coke_furnace","haveGUI","dropContent","init"]}
execute unless entity @s[tag=placeFailed] run setblock ~ ~ ~ minecraft:barrel{CustomName:'{"translate":"container.coke_furnace"}'} replace

execute unless entity @s[tag=placeFailed] run summon minecraft:armor_stand ~ ~1 ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["customFakeBlock","galaxy.coke_furnace","init"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10200}}]}
execute unless entity @s[tag=placeFailed] run function galaxy:block/directional-horizon_4_facing
tag @e[tag=customFakeBlock,tag=galaxy.coke_furnace,tag=init] remove init

scoreboard players set @e[tag=customBlock,tag=galaxy.coke_furnace,tag=init] statesLit 0
scoreboard players set @e[tag=customBlock,tag=galaxy.coke_furnace,tag=init] workStatus 0
scoreboard players set @e[tag=customBlock,tag=galaxy.coke_furnace,tag=init] workProcStatus 0
scoreboard players set @e[tag=customBlock,tag=galaxy.coke_furnace,tag=init] workProcStatus0 0
scoreboard players set @e[tag=customBlock,tag=galaxy.coke_furnace,tag=init] workProcStatus1 0
scoreboard players set @e[tag=customBlock,tag=galaxy.coke_furnace,tag=init] workProcStatus-1 0
scoreboard players set @e[tag=customBlock,tag=galaxy.coke_furnace,tag=init] workProc1 0
scoreboard players set @e[tag=customBlock,tag=galaxy.coke_furnace,tag=init] workProc1CanWork 0
scoreboard players set @e[tag=customBlock,tag=galaxy.coke_furnace,tag=init] workProc1Prog 0
scoreboard players set @e[tag=customBlock,tag=galaxy.coke_furnace,tag=init] guiMode 0
execute as @e[tag=customBlock,tag=galaxy.coke_furnace,tag=init] run function galaxy:gui/coke_furnace/update
execute as @e[tag=customBlock,tag=galaxy.coke_furnace,tag=init] run function galaxy:gui/coke_furnace/main
tag @e[tag=customBlock,tag=galaxy.coke_furnace,tag=init] remove init

execute if entity @s[tag=placeFailed] as @a[tag=triggerPlaceBlock,gamemode=!creative] run function galaxy:block/give/coke_furnace

execute unless entity @s[tag=placeFailed] run playsound block.metal.place block @a ~ ~ ~ 1 0.8
