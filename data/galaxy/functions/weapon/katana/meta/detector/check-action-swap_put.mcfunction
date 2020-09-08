function galaxy:weapon/katana/meta/detector/style-scabbard
function galaxy:weapon/katana/meta/detector/style-edge

scoreboard players set #1 calcu_temp 0

execute store success score #1 calcu_temp if entity @s[scores={styleScabbard=1,styleEdge=1}] run function galaxy:weapon/katana/replace-hand_off/katana
execute store success score #1 calcu_temp if entity @s[scores={styleScabbard=2,styleEdge=2}] run function galaxy:weapon/katana/replace-hand_off/nazo
