scoreboard players set #gun.bullet.flight.blockDifference galaxy 0
execute unless score #gun.bullet.flight.currentBlock.X galaxy = #gun.bullet.flight.previousBlock.X galaxy run scoreboard players add #gun.bullet.flight.blockDifference galaxy 1
execute unless score #gun.bullet.flight.currentBlock.Y galaxy = #gun.bullet.flight.previousBlock.Y galaxy run scoreboard players add #gun.bullet.flight.blockDifference galaxy 2
execute unless score #gun.bullet.flight.currentBlock.Z galaxy = #gun.bullet.flight.previousBlock.Z galaxy run scoreboard players add #gun.bullet.flight.blockDifference galaxy 4
execute unless entity @s run scoreboard players set #gun.bullet.flight.blockDifference galaxy 0

execute unless score #gun.bullet.flight.blockDifference galaxy matches 0 at @e[tag=galaxy.dummy.previousBullet] run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.bulletHitBlockHelper"]}

execute if score #gun.bullet.flight.blockDifference galaxy matches 1..4 unless score #gun.bullet.flight.blockDifference galaxy matches 3 run function galaxy:weapon/gun/bullet/flight/hit_block/check-current
execute if score #gun.bullet.flight.blockDifference galaxy matches 3..7 unless score #gun.bullet.flight.blockDifference galaxy matches 4 run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/main

execute store result score #gun.bullet.flight.beforeHitBlock.X galaxy run data get entity @e[tag=galaxy.dummy.bulletHitBlockHelper,limit=1] Pos[0]
execute store result score #gun.bullet.flight.beforeHitBlock.Y galaxy run data get entity @e[tag=galaxy.dummy.bulletHitBlockHelper,limit=1] Pos[1]
execute store result score #gun.bullet.flight.beforeHitBlock.Z galaxy run data get entity @e[tag=galaxy.dummy.bulletHitBlockHelper,limit=1] Pos[2]

kill @e[tag=galaxy.dummy.bulletHitBlockHelper]

scoreboard players set #gun.bullet.flight.hitDirection galaxy 0
#E
execute if score #gun.bullet.flight.beforeHitBlock.X galaxy < #gun.bullet.flight.hitBlock.X galaxy run scoreboard players add #gun.bullet.flight.hitDirection galaxy 1
#W
execute if score #gun.bullet.flight.beforeHitBlock.X galaxy > #gun.bullet.flight.hitBlock.X galaxy run scoreboard players add #gun.bullet.flight.hitDirection galaxy 2
#S
execute if score #gun.bullet.flight.beforeHitBlock.Z galaxy < #gun.bullet.flight.hitBlock.Z galaxy run scoreboard players add #gun.bullet.flight.hitDirection galaxy 4
#N
execute if score #gun.bullet.flight.beforeHitBlock.Z galaxy > #gun.bullet.flight.hitBlock.Z galaxy run scoreboard players add #gun.bullet.flight.hitDirection galaxy 8
#U
execute if score #gun.bullet.flight.beforeHitBlock.Y galaxy < #gun.bullet.flight.hitBlock.Y galaxy run scoreboard players add #gun.bullet.flight.hitDirection galaxy 100
#D
execute if score #gun.bullet.flight.beforeHitBlock.Y galaxy > #gun.bullet.flight.hitBlock.Y galaxy run scoreboard players add #gun.bullet.flight.hitDirection galaxy 200
