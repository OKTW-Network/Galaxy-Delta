function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_get-x
function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_get-y

scoreboard players operation #gun.bullet.flight.hitBlock.flat.length1 galaxy = #gun.bullet.flight.hitBlock.length.X galaxy
scoreboard players operation #gun.bullet.flight.hitBlock.flat.length2 galaxy = #gun.bullet.flight.hitBlock.length.Y galaxy
scoreboard players operation #gun.bullet.flight.hitBlock.flat.lengthToBorder1 galaxy = #gun.bullet.flight.hitBlock.lengthToBorder.X galaxy
scoreboard players operation #gun.bullet.flight.hitBlock.flat.lengthToBorder2 galaxy = #gun.bullet.flight.hitBlock.lengthToBorder.Y galaxy
function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_flat

execute store success score #gun.bullet.flight.hitBlock.XYZ.hight galaxy if score #gun.bullet.flight.hitBlock.flat.result galaxy matches 0..3 unless score #gun.bullet.flight.hitBlock.flat.result galaxy matches 1 run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_check-y

execute if entity @s[tag=!galaxy._success.gun.bullet.hitBlock] if score #gun.bullet.flight.hitBlock.flat.result galaxy matches 2 run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_move_helper-y

execute if entity @s[tag=!galaxy._success.gun.bullet.hitBlock] run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/xz

execute if entity @s[tag=!galaxy._success.gun.bullet.hitBlock] if score #gun.bullet.flight.hitBlock.XYZ.hight galaxy matches 0 run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_check-current_y

execute if entity @s[tag=!galaxy._success.gun.bullet.hitBlock] if score #gun.bullet.flight.hitBlock.XYZ.hight galaxy matches 0 run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_move_helper-x
execute if entity @s[tag=!galaxy._success.gun.bullet.hitBlock] if score #gun.bullet.flight.hitBlock.XYZ.hight galaxy matches 0 run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_move_helper-z
execute if entity @s[tag=!galaxy._success.gun.bullet.hitBlock] run function galaxy:weapon/gun/bullet/flight/hit_block/check-current
