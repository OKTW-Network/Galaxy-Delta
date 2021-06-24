execute facing entity @a[tag=ThisPlaceEntity,limit=1] eyes run tp ~ ~ ~
execute store result score #1 calcu_temp run data get entity @s Rotation[0]
execute if score #1 calcu_temp matches -21..22 run tp @e[tag=init,limit=1] ~ ~ ~ 0 0
execute if score #1 calcu_temp matches 23..67 run tp @e[tag=init,limit=1] ~ ~ ~ 45 0
execute if score #1 calcu_temp matches 68..112 run tp @e[tag=init,limit=1] ~ ~ ~ 90 0
execute if score #1 calcu_temp matches 113..157 run tp @e[tag=init,limit=1] ~ ~ ~ 135 0
execute if score #1 calcu_temp matches 158..180 run tp @e[tag=init,limit=1] ~ ~ ~ 180 0
execute if score #1 calcu_temp matches -180..-158 run tp @e[tag=init,limit=1] ~ ~ ~ 180 0
execute if score #1 calcu_temp matches -157..-113 run tp @e[tag=init,limit=1] ~ ~ ~ -135 0
execute if score #1 calcu_temp matches -112..-68 run tp @e[tag=init,limit=1] ~ ~ ~ -90 0
execute if score #1 calcu_temp matches -67..-22 run tp @e[tag=init,limit=1] ~ ~ ~ -45 0
