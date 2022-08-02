function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_get-y
function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_get-z

scoreboard players operation #gun.bullet.flight.hitBlock.flat.length1 galaxy = #gun.bullet.flight.hitBlock.length.Y galaxy
scoreboard players operation #gun.bullet.flight.hitBlock.flat.length2 galaxy = #gun.bullet.flight.hitBlock.length.Z galaxy
scoreboard players operation #gun.bullet.flight.hitBlock.flat.lengthToBorder1 galaxy = #gun.bullet.flight.hitBlock.lengthToBorder.Y galaxy
scoreboard players operation #gun.bullet.flight.hitBlock.flat.lengthToBorder2 galaxy = #gun.bullet.flight.hitBlock.lengthToBorder.Z galaxy
function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_flat

execute if score #gun.bullet.flight.hitBlock.flat.result galaxy matches 0..3 unless score #gun.bullet.flight.hitBlock.flat.result galaxy matches 2 run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_check-y
execute if score #gun.bullet.flight.hitBlock.flat.result galaxy matches 0..3 unless score #gun.bullet.flight.hitBlock.flat.result galaxy matches 1 run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_check-z

execute if entity @s[tag=!galaxy._success.gun.bullet.hitBlock] if score #gun.bullet.flight.hitBlock.flat.result galaxy matches 1 run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_move_helper-y
execute if entity @s[tag=!galaxy._success.gun.bullet.hitBlock] if score #gun.bullet.flight.hitBlock.flat.result galaxy matches 2 run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_move_helper-z
