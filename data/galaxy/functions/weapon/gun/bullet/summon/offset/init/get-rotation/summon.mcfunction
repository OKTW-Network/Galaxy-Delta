execute as @e[tag=galaxy.dummy.bulletBaseAnchor] at @s run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.bulletGetRotation"]}
tag @e[tag=galaxy.dummy.bulletRotationAnchor,limit=1] add pick
execute as @e[tag=galaxy.dummy.bulletGetRotation,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[tag=galaxy.dummy.bulletRotationAnchor,tag=pick,limit=1] feet
kill @e[tag=galaxy.dummy.bulletRotationAnchor,tag=pick]
data modify storage galaxy:temp +weapon.gun.bullet.summon.offset.listRotation append from entity @e[tag=galaxy.dummy.bulletGetRotation,limit=1] Rotation
kill @e[tag=galaxy.dummy.bulletGetRotation]

execute if entity @e[tag=galaxy.dummy.bulletRotationAnchor] run function galaxy:weapon/gun/bullet/summon/offset/init/get-rotation/summon
