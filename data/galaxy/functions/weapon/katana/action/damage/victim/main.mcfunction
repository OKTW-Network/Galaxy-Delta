scoreboard players operation #entity.damage_reduction.damage cu = #weapon.katana.action.damage galaxy
function cu:entity/damage_reduction/main
scoreboard players operation #weapon.katana.actionVictim.damage galaxy = #entity.damage_reduction.result cu
function cu:entity/temp_knockback_resistance/apply
execute if score #weapon.katana.actionVictim.damage galaxy matches 1.. run function galaxy:weapon/katana/action/damage/victim/_recursive
function cu:entity/temp_knockback_resistance/remove
execute if score #weapon.katana.actionVictim.damage galaxy matches 1 run damage @s 1 galaxy:katana_action by @a[tag=galaxy._tag.ThisDamageSource,limit=1]
