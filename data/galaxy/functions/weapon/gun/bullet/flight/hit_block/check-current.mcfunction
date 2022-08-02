execute at @s run function galaxy:weapon/gun/bullet/flight/hit_block/check

execute if entity @s[tag=galaxy._success.gun.bullet.hitBlock] run scoreboard players operation #gun.bullet.flight.hitBlock.X galaxy = #gun.bullet.flight.currentBlock.X galaxy
execute if entity @s[tag=galaxy._success.gun.bullet.hitBlock] run scoreboard players operation #gun.bullet.flight.hitBlock.Y galaxy = #gun.bullet.flight.currentBlock.Y galaxy
execute if entity @s[tag=galaxy._success.gun.bullet.hitBlock] run scoreboard players operation #gun.bullet.flight.hitBlock.Z galaxy = #gun.bullet.flight.currentBlock.Z galaxy
