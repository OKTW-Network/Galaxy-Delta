execute if score #gun.bullet.summon.accuracy.setup_anchor.move.positive galaxy matches 0 run tp ^ ^-0.02 ^
execute if score #gun.bullet.summon.accuracy.setup_anchor.move.positive galaxy matches 1 run tp ^ ^0.02 ^

scoreboard players remove #gun.bullet.summon.accuracy.setup_anchor.move.value galaxy 2

execute if score #gun.bullet.summon.accuracy.setup_anchor.move.value galaxy matches 2.. at @s run function galaxy:weapon/gun/bullet/summon/accuracy/setup_anchor/summon/_move/y_2
