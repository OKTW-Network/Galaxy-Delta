scoreboard players set #gun.bullet.flight.hitBlock.flat.result galaxy 0

scoreboard players operation #1 temp = #gun.bullet.flight.hitBlock.flat.lengthToBorder2 galaxy
scoreboard players operation #1 temp *= #1000 num
scoreboard players operation #1 temp /= #gun.bullet.flight.hitBlock.flat.length2 galaxy
execute store result score #2 temp run scoreboard players operation #1 temp *= #gun.bullet.flight.hitBlock.flat.length1 galaxy
scoreboard players operation #1 temp /= #1000 num
# scoreboard players operation #2 temp %= #1000 num
# execute if score #2 temp matches 500.. run scoreboard players add #1 temp 1
execute if score #1 temp >= #gun.bullet.flight.hitBlock.flat.lengthToBorder1 galaxy run scoreboard players add #gun.bullet.flight.hitBlock.flat.result galaxy 1

scoreboard players operation #1 temp = #gun.bullet.flight.hitBlock.flat.lengthToBorder1 galaxy
scoreboard players operation #1 temp *= #1000 num
scoreboard players operation #1 temp /= #gun.bullet.flight.hitBlock.flat.length1 galaxy
execute store result score #2 temp run scoreboard players operation #1 temp *= #gun.bullet.flight.hitBlock.flat.length2 galaxy
scoreboard players operation #1 temp /= #1000 num
# scoreboard players operation #2 temp %= #1000 num
# execute if score #2 temp matches 500.. run scoreboard players add #1 temp 1
execute if score #1 temp >= #gun.bullet.flight.hitBlock.flat.lengthToBorder2 galaxy run scoreboard players add #gun.bullet.flight.hitBlock.flat.result galaxy 2
