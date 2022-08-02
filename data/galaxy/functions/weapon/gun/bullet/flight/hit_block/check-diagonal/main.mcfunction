scoreboard players operation #gun.bullet.flight.hitBlock.X galaxy = #gun.bullet.flight.previousBlock.X galaxy
scoreboard players operation #gun.bullet.flight.hitBlock.Y galaxy = #gun.bullet.flight.previousBlock.Y galaxy
scoreboard players operation #gun.bullet.flight.hitBlock.Z galaxy = #gun.bullet.flight.previousBlock.Z galaxy

scoreboard players set #gun.bullet.flight.hitBlock.check galaxy 0

execute if score #gun.bullet.flight.blockDifference galaxy matches 3 run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/xy
execute if score #gun.bullet.flight.blockDifference galaxy matches 5 run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/xz
execute if score #gun.bullet.flight.blockDifference galaxy matches 6 run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/yz

execute if score #gun.bullet.flight.blockDifference galaxy matches 3..6 if entity @s[tag=!galaxy._success.gun.bullet.hitBlock] run function galaxy:weapon/gun/bullet/flight/hit_block/check-current

execute if score #gun.bullet.flight.blockDifference galaxy matches 7 run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/xyz
