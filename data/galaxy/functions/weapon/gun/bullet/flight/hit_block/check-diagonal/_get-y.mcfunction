execute store result score #1 temp run data get entity @s Pos[1] 10
execute store result score #2 temp run data get entity @e[tag=galaxy.dummy.bulletHitBlockHelper,limit=1] Pos[1] 10
execute store result score #3 temp run data get entity @e[tag=galaxy.dummy.bulletHitBlockHelper,limit=1] Pos[1]

scoreboard players operation #gun.bullet.flight.hitBlock.length.Y galaxy = #1 temp
scoreboard players operation #gun.bullet.flight.hitBlock.length.Y galaxy -= #2 temp
execute if score #gun.bullet.flight.hitBlock.length.Y galaxy matches ..-1 run scoreboard players operation #gun.bullet.flight.hitBlock.length.Y galaxy *= #-1 num

scoreboard players operation #gun.bullet.flight.hitBlock.lengthToBorder.Y galaxy = #3 temp
execute if score #gun.bullet.flight.currentBlock.Y galaxy > #3 temp run scoreboard players add #gun.bullet.flight.hitBlock.lengthToBorder.Y galaxy 1
scoreboard players operation #gun.bullet.flight.hitBlock.lengthToBorder.Y galaxy *= #10 num
scoreboard players operation #gun.bullet.flight.hitBlock.lengthToBorder.Y galaxy -= #2 temp
execute if score #gun.bullet.flight.hitBlock.lengthToBorder.Y galaxy matches ..-1 run scoreboard players operation #gun.bullet.flight.hitBlock.lengthToBorder.Y galaxy -= #-1 num

scoreboard players operation #gun.bullet.flight.hitBlock.shift.Y galaxy = #gun.bullet.flight.currentBlock.Y galaxy
scoreboard players operation #gun.bullet.flight.hitBlock.shift.Y galaxy -= #3 temp
