execute store result entity @s HurtTime short 1 run scoreboard players get #hurtTime galaxy.damage
execute if entity @s[type=#minecraft:mob] run function galaxy:damage/hurt_display
execute store result score #victim.damagedHealth galaxy.damage run data get entity @s Health 1000
scoreboard players operation #victim.damagedHealth galaxy.damage -= #damage1000 galaxy.damage
execute if score #victim.damagedHealth galaxy.damage matches ..0 at @s run function galaxy:damage/custom_death
execute if score #victim.damagedHealth galaxy.damage matches ..0 run scoreboard players add #killCount galaxy.damage 1
execute if score #victim.damagedHealth galaxy.damage matches 1.. store result entity @s Health float 0.001 run scoreboard players get #victim.damagedHealth galaxy.damage
execute if score #victim.damagedHealth galaxy.damage matches 1.. run data modify storage galaxy:temp +damage.entityDamaged append from entity @s UUID
