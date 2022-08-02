data modify storage cu:list include.inputTarget set from entity @s UUID
data modify storage cu:list include.inputSource set from entity @e[tag=galaxy._tag.ThisDamageSource,limit=1] data.galaxy.entityDamaged
function cu:list/include/main
execute unless score #list.result cu matches 0 run tag @s remove galaxy.damage.target
