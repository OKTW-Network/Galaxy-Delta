function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_get-x
function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_get-z

execute at @e[tag=galaxy.dummy.bulletHitBlockHelper] align xyz run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.bulletHitBlockHelper.rotationAnchor"]}

execute if score #gun.bullet.flight.hitBlock.shift.X galaxy matches 1 as @e[tag=galaxy.dummy.bulletHitBlockHelper.rotationAnchor] at @s run tp ~1 ~ ~
execute if score #gun.bullet.flight.hitBlock.shift.Z galaxy matches 1 as @e[tag=galaxy.dummy.bulletHitBlockHelper.rotationAnchor] at @s run tp ~ ~ ~1
tp @e[tag=galaxy.dummy.bulletHitBlockHelper] ~ ~ ~ facing entity @e[tag=galaxy.dummy.bulletHitBlockHelper.rotationAnchor,limit=1]
execute store result score #1 temp run data get entity @e[tag=galaxy.dummy.bulletHitBlockHelper,limit=1] Rotation[0] 1000
scoreboard players set #2 temp 0
execute if score #1 temp >= #gun.bullet.flight.rotation.yaw galaxy run scoreboard players add #2 temp 1
execute if score #1 temp <= #gun.bullet.flight.rotation.yaw galaxy run scoreboard players add #2 temp 2
scoreboard players operation #3 temp = #2 temp
scoreboard players operation #1 temp = #gun.bullet.flight.hitBlock.shift.X galaxy
scoreboard players operation #1 temp += #gun.bullet.flight.hitBlock.shift.Z galaxy
execute if score #1 temp matches 0 if score #2 temp matches 1..2 run scoreboard players remove #3 temp 1
execute if score #1 temp matches 0 if score #2 temp matches 1..2 if score #3 temp matches 0 run scoreboard players set #3 temp 2
execute if score #3 temp matches 0..3 unless score #3 temp matches 2 run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_check-x
execute if score #3 temp matches 0..3 unless score #3 temp matches 1 run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_check-z
execute if entity @s[tag=!galaxy._success.gun.bullet.hitBlock] if score #3 temp matches 1 run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_move_helper-x
execute if entity @s[tag=!galaxy._success.gun.bullet.hitBlock] if score #3 temp matches 2 run function galaxy:weapon/gun/bullet/flight/hit_block/check-diagonal/_move_helper-z

kill @e[tag=galaxy.dummy.bulletHitBlockHelper.rotationAnchor]
