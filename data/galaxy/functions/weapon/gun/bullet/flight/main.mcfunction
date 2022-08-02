summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.previousBullet"]}

tp @s ^ ^ ^0.25

execute store result score #gun.bullet.flight.currentBlock.X galaxy run data get entity @s Pos[0]
execute store result score #gun.bullet.flight.currentBlock.Y galaxy run data get entity @s Pos[1]
execute store result score #gun.bullet.flight.currentBlock.Z galaxy run data get entity @s Pos[2]
execute store result score #gun.bullet.flight.previousBlock.X galaxy run data get entity @e[tag=galaxy.dummy.previousBullet,limit=1] Pos[0]
execute store result score #gun.bullet.flight.previousBlock.Y galaxy run data get entity @e[tag=galaxy.dummy.previousBullet,limit=1] Pos[1]
execute store result score #gun.bullet.flight.previousBlock.Z galaxy run data get entity @e[tag=galaxy.dummy.previousBullet,limit=1] Pos[2]
execute store result score #gun.bullet.flight.rotation.yaw galaxy run data get entity @s Rotation[0] 1000
execute store result score #gun.bullet.flight.rotation.pitch galaxy run data get entity @s Rotation[1] 1000
function galaxy:weapon/gun/bullet/flight/hit_block/main
execute if entity @s[tag=galaxy._success.gun.bullet.hitBlock] if score @s galaxy.projectile.penetrate matches 1.. run function galaxy:weapon/gun/bullet/flight/penetrate/block
# execute if entity @s[tag=galaxy._success.gun.bullet.hitBlock] if score @s galaxy.projectile.bounce matches 1.. at @s run function galaxy:weapon/gun/bullet/flight/bounce/block/main

execute if entity @s unless entity @s[tag=galaxy._success.gun.bullet.hitBlock,tag=!galaxy._tag.ignoreHitBlock] at @s run function galaxy:weapon/gun/bullet/flight/damage
execute if entity @s[tag=!galaxy._success.gun.bullet.hitEntity] if score @s galaxy.projectile.trace matches 1.. unless score @s galaxy.projectile.traceCooldown matches 1.. at @s run function galaxy:weapon/gun/bullet/flight/trace/main
execute if entity @s[tag=galaxy._success.gun.bullet.hitEntity] if score @s galaxy.projectile.penetrate matches 1.. run function galaxy:weapon/gun/bullet/flight/penetrate/entity
execute if entity @s[tag=galaxy._success.gun.bullet.hitEntity] if score @s galaxy.projectile.bounce matches 1.. at @s run function galaxy:weapon/gun/bullet/flight/bounce/entity/main

execute if entity @s unless entity @s[tag=galaxy._success.gun.bullet.hitBlock,tag=!galaxy._tag.ignoreHitBlock] at @s run function galaxy:weapon/gun/bullet/flight/particle

execute if score @s galaxy.projectile.traceCooldown matches 1.. run scoreboard players remove @s galaxy.projectile.traceCooldown 1

scoreboard players remove #gun.bullet.flight.recursiveLimit galaxy 1
scoreboard players remove @s galaxy.projectile.remainFlightDistance 1

execute unless entity @s run tag @s add galaxy._STOP
tag @s[scores={galaxy.projectile.remainFlightDistance=..0}] add galaxy._STOP
tag @s[tag=galaxy._success.gun.bullet.hitBlock,tag=!galaxy._tag.ignoreHitBlock] add galaxy._STOP
tag @s[tag=galaxy._success.gun.bullet.hitEntity,tag=!galaxy._tag.ignoreHitEntity] add galaxy._STOP

execute if entity @s[tag=galaxy._STOP] run kill @s

tag @s remove galaxy._success.gun.bullet.hitBlock
tag @s remove galaxy._success.gun.bullet.hitEntity

tag @s remove galaxy._tag.ignoreHitBlock
tag @s remove galaxy._tag.ignoreHitEntity

kill @e[tag=galaxy.dummy.previousBullet]

execute if entity @s[tag=!galaxy._STOP] if score #gun.bullet.flight.recursiveLimit galaxy matches 1.. at @s run function galaxy:weapon/gun/bullet/flight/main
