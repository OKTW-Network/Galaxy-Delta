execute store result score #1 temp run data get entity @s Pos[0] 10
execute store result score #2 temp run data get entity @e[tag=galaxy.dummy.bulletHitBlockHelper,limit=1] Pos[0] 10
execute store result score #3 temp run data get entity @e[tag=galaxy.dummy.bulletHitBlockHelper,limit=1] Pos[0]

scoreboard players operation #gun.bullet.flight.hitBlock.length.X galaxy = #1 temp
scoreboard players operation #gun.bullet.flight.hitBlock.length.X galaxy -= #2 temp
execute if score #gun.bullet.flight.hitBlock.length.X galaxy matches ..-1 run scoreboard players operation #gun.bullet.flight.hitBlock.length.X galaxy *= #-1 num

scoreboard players operation #gun.bullet.flight.hitBlock.lengthToBorder.X galaxy = #3 temp
execute if score #gun.bullet.flight.currentBlock.X galaxy > #3 temp run scoreboard players add #gun.bullet.flight.hitBlock.lengthToBorder.X galaxy 1
scoreboard players operation #gun.bullet.flight.hitBlock.lengthToBorder.X galaxy *= #10 num
scoreboard players operation #gun.bullet.flight.hitBlock.lengthToBorder.X galaxy -= #2 temp
execute if score #gun.bullet.flight.hitBlock.lengthToBorder.X galaxy matches ..-1 run scoreboard players operation #gun.bullet.flight.hitBlock.lengthToBorder.X galaxy -= #-1 num

scoreboard players operation #gun.bullet.flight.hitBlock.shift.X galaxy = #gun.bullet.flight.currentBlock.X galaxy
scoreboard players operation #gun.bullet.flight.hitBlock.shift.X galaxy -= #3 temp
