execute if score #gun.bullet.flight.hitBlock.shift.Z galaxy matches 1 at @e[tag=galaxy.dummy.bulletHitBlockHelper] positioned ~ ~ ~1 run function galaxy:weapon/gun/bullet/flight/hit_block/check
execute if score #gun.bullet.flight.hitBlock.shift.Z galaxy matches -1 at @e[tag=galaxy.dummy.bulletHitBlockHelper] positioned ~ ~ ~-1 run function galaxy:weapon/gun/bullet/flight/hit_block/check
execute if entity @s[tag=galaxy._success.gun.bullet.hitBlock] run scoreboard players add #gun.bullet.flight.hitBlock.check galaxy 4
execute if entity @s[tag=galaxy._success.gun.bullet.hitBlock] run scoreboard players operation #gun.bullet.flight.hitBlock.Z galaxy += #gun.bullet.flight.hitBlock.shift.Z galaxy
