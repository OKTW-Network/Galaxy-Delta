scoreboard players set #gun.bullet.summon.accuracy.setup_anchor.move.positive galaxy 1
execute if score #gun.bullet.summon.accuracy.setup_anchor.move.value galaxy matches ..-1 run scoreboard players set #gun.bullet.summon.accuracy.setup_anchor.move.positive galaxy 0
execute if score #gun.bullet.summon.accuracy.setup_anchor.move.value galaxy matches ..-1 run scoreboard players operation #gun.bullet.summon.accuracy.setup_anchor.move.value galaxy *= #-1 num

execute if score #gun.bullet.summon.accuracy.setup_anchor.move.value galaxy matches 10.. as @e[tag=galaxy.dummy.bulletRotationAnchor,tag=galaxy._preparing] at @s run function galaxy:weapon/gun/bullet/summon/accuracy/setup_anchor/summon/_move/y_10
execute if score #gun.bullet.summon.accuracy.setup_anchor.move.value galaxy matches 2.. as @e[tag=galaxy.dummy.bulletRotationAnchor,tag=galaxy._preparing] at @s run function galaxy:weapon/gun/bullet/summon/accuracy/setup_anchor/summon/_move/y_2
execute if score #gun.bullet.summon.accuracy.setup_anchor.move.value galaxy matches 1 as @e[tag=galaxy.dummy.bulletRotationAnchor,tag=galaxy._preparing] at @s run function galaxy:weapon/gun/bullet/summon/accuracy/setup_anchor/summon/_move/y_1
