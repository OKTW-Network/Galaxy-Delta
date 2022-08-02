execute store result score #1 calcu_temp run data get entity @s Pos[2] 10
execute store result score #2 calcu_temp run data get entity @e[tag=galaxy.dummy.bulletHitBlockHelper,limit=1] Pos[2] 10
execute store result score #3 calcu_temp run data get entity @e[tag=galaxy.dummy.bulletHitBlockHelper,limit=1] Pos[2]

scoreboard players operation #gun.bullet.flight.hitBlock.length.Z galaxy = #1 calcu_temp
scoreboard players operation #gun.bullet.flight.hitBlock.length.Z galaxy -= #2 calcu_temp
execute if score #gun.bullet.flight.hitBlock.length.Z galaxy matches ..-1 run scoreboard players operation #gun.bullet.flight.hitBlock.length.Z galaxy *= #-1 num

scoreboard players operation #gun.bullet.flight.hitBlock.lengthToBorder.Z galaxy = #3 calcu_temp
execute if score #gun.bullet.flight.currentBlock.Z galaxy > #3 calcu_temp run scoreboard players add #gun.bullet.flight.hitBlock.lengthToBorder.Z galaxy 1
scoreboard players operation #gun.bullet.flight.hitBlock.lengthToBorder.Z galaxy *= #10 num
scoreboard players operation #gun.bullet.flight.hitBlock.lengthToBorder.Z galaxy -= #2 calcu_temp
execute if score #gun.bullet.flight.hitBlock.lengthToBorder.Z galaxy matches ..-1 run scoreboard players operation #gun.bullet.flight.hitBlock.lengthToBorder.Z galaxy -= #-1 num

scoreboard players operation #gun.bullet.flight.hitBlock.shift.Z galaxy = #gun.bullet.flight.currentBlock.Z galaxy
scoreboard players operation #gun.bullet.flight.hitBlock.shift.Z galaxy -= #3 calcu_temp
