function galaxy:weapon/katana/meta/detector/style-scabbard
function galaxy:weapon/katana/meta/detector/style-edge

scoreboard players set #calculation_temp1 numeric 0

execute store success score #calculation_temp1 numeric if entity @s[scores={styleScabbard=1,styleEdge=1}] run function galaxy:weapon/katana/replace-hand_off/katana
execute store success score #calculation_temp1 numeric if entity @s[scores={styleScabbard=2,styleEdge=2}] run function galaxy:weapon/katana/replace-hand_off/nazo
