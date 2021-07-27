data modify storage cu:list include.inputTarget set from entity @s UUID
data modify storage cu:list include.inputSource set from entity @e[tag=galaxy.damage.source,limit=1] data.entityDamaged
function cu:list/include/main
execute unless score #result listInclude matches 0 run tag @s remove galaxy.damage.target
