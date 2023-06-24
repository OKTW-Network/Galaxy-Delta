data modify storage galaxy:temp +weapon.gun.transform.result set from storage galaxy:temp +weapon.gun.transform.input
execute store result score #1 temp store result score #2 temp run data get storage galaxy:temp +weapon.gun.transform.input.tag.CustomModelData
scoreboard players operation #2 temp %= #10 num
scoreboard players operation #1 temp -= #2 temp
execute store result storage galaxy:temp +weapon.gun.transform.result.tag.CustomModelData int 1 run scoreboard players get #1 temp
data modify storage galaxy:temp +weapon.gun.transform.result.tag.CustomData.galaxy.tag.status set value 0b

data remove storage galaxy:temp +weapon.gun.transform.input
