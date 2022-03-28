data modify storage cu:list include.inputTarget set from entity @s UUID
data modify storage cu:list include.inputSource set from entity @e[tag=galaxy.hitbox.source,limit=1] data.galaxy.entityDamaged
function cu:list/include/main
execute unless score #result listInclude matches 1 run tag @s remove galaxy.hitbox.target
