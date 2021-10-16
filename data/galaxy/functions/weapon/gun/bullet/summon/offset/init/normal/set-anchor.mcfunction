execute as @e[tag=galaxy.dummy.bulletBaseAnchor] at @s run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.bulletRotationAnchor","init"]}
execute as @e[tag=galaxy.dummy.bulletBaseAnchor] at @s run tp @e[tag=galaxy.dummy.bulletRotationAnchor,tag=init] ^ ^ ^1 ~ ~

function galaxy:weapon/gun/bullet/summon/offset/init/move-anchor/by-normal

tag @e[tag=galaxy.dummy.bulletRotationAnchor,tag=init] remove init
