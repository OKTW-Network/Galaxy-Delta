summon minecraft:armor_stand ~ ~ ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["super_builder-pistol","init"]}
setblock ~ ~ ~ minecraft:barrel{CustomName:"{\"translate\":\"container.super_builder-pistol\"}"} replace
execute store result score @s rotation0 run data get entity @s Rotation[0]
execute if score @s rotation0 matches 45 run scoreboard players set @s rotation0 0
execute if score @s rotation0 matches -45 run scoreboard players set @s rotation0 0
execute if score @s rotation0 matches 135 run scoreboard players set @s rotation0 -180
execute if score @s rotation0 matches -135 run scoreboard players set @s rotation0 -180
execute if score @s rotation0 matches 0 at @s run summon minecraft:armor_stand ~ ~1 ~ {Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["super_builder-pistol_fake_block"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10400,fakeBlock:1,advancedBlastFurnace:1}}]}
execute if score @s rotation0 matches 90 at @s run summon minecraft:armor_stand ~ ~1 ~ {Pose:{Head:[0f,90f,0f]},Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["super_builder-pistol_fake_block"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10400,fakeBlock:1,advancedBlastFurnace:1}}]}
execute if score @s rotation0 matches -90 at @s run summon minecraft:armor_stand ~ ~1 ~ {Pose:{Head:[0f,-90f,0f]},Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["super_builder-pistol_fake_block"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10400,fakeBlock:1,advancedBlastFurnace:1}}]}
execute if score @s rotation0 matches -180 at @s run summon minecraft:armor_stand ~ ~1 ~ {Pose:{Head:[0f,180f,0f]},Silent:1b,CustomNameVisible:0b,NoGravity:1b,Invulnerable:1b,Small:1b,Marker:1b,Invisible:1b,Tags:["super_builder-pistol_fake_block"],ArmorItems:[{},{},{},{id:"minecraft:wooden_sword",Count:1b,tag:{CustomModelData:10400,fakeBlock:1,advancedBlastFurnace:1}}]}
scoreboard players set @e[tag=super_builder-pistol,tag=init] guiMode 0
scoreboard players set @e[tag=super_builder-pistol,tag=init] sbldAttribute 0
scoreboard players set @e[tag=super_builder-pistol,tag=init] sbldAtbValue 0
scoreboard players set @e[tag=super_builder-pistol,tag=init] optPistolStyle 1
scoreboard players set @e[tag=super_builder-pistol,tag=init] optPistolDamage 1
scoreboard players set @e[tag=super_builder-pistol,tag=init] optPistolBltDist 10
scoreboard players set @e[tag=super_builder-pistol,tag=init] optPistolFireDly 6
scoreboard players set @e[tag=super_builder-pistol,tag=init] optPistolMaxTemp 100
scoreboard players set @e[tag=super_builder-pistol,tag=init] optPistolHeat 4
scoreboard players set @e[tag=super_builder-pistol,tag=init] optPistolCooling 1
scoreboard players set @e[tag=super_builder-pistol,tag=init] optPistolCoolDly 12
scoreboard players set @e[tag=super_builder-pistol,tag=init] optPistolBltSped 1
scoreboard players set @e[tag=super_builder-pistol,tag=init] optPistolBltOfst 1
execute as @e[tag=super_builder-pistol,tag=init] run function galaxy:gui/super_builder-pistol/update
execute as @e[tag=super_builder-pistol,tag=init] run tag @s remove init
kill @s
