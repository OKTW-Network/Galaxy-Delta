execute unless score #weapon.gun.transform.dualWield galaxy matches -2147483648..2147483647 run scoreboard players set #weapon.gun.transform.dualWield galaxy 0

data modify storage galaxy:temp +weapon.gun.transform.result set from storage galaxy:temp +weapon.gun.transform.input
execute store result score #1 temp store result score #2 temp run data get storage galaxy:temp +weapon.gun.transform.input.tag.CustomModelData
scoreboard players operation #2 temp %= #10 num
scoreboard players operation #1 temp -= #2 temp
scoreboard players add #1 temp 1
execute if score #weapon.gun.transform.dualWield galaxy matches 1 run scoreboard players add #1 temp 1
execute store result storage galaxy:temp +weapon.gun.transform.result.tag.CustomModelData int 1 run scoreboard players get #1 temp
data modify storage galaxy:temp +weapon.gun.transform.result.tag.CustomData.galaxy.tag.status set value 1b

data remove storage galaxy:temp +weapon.gun.transform.input
scoreboard players reset #weapon.gun.transform.dualWield galaxy
