execute as @e[tag=galaxy.dummy.bulletBaseAnchor] at @s run summon minecraft:marker ~ ~ ~ {Tags:["galaxy.dummy.bulletRotationAnchor","galaxy._preparing"]}
execute as @e[tag=galaxy.dummy.bulletBaseAnchor] at @s run tp @e[tag=galaxy.dummy.bulletRotationAnchor,tag=galaxy._preparing] ^ ^ ^1 ~ ~

function galaxy:weapon/gun/bullet/summon/accuracy/setup_anchor/summon/_move/main

tag @e[tag=galaxy.dummy.bulletRotationAnchor,tag=galaxy._preparing] remove galaxy._preparing
