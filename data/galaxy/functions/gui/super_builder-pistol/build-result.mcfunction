execute unless block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b}]} run tag @s add create
execute if entity @s[tag=create] run replaceitem block ~ ~ ~ container.16 minecraft:carrot_on_a_stick{display:{Name:"{\"translate\":\"item.galaxy.lasor\",\"italic\":false}"},CustomModelData:210100,pistol:1,pistolResult:1}
execute if entity @s[tag=create] run function creative-utilities:generate-mini_uuid
execute if entity @s[tag=create] store result block ~ ~ ~ Items[{Slot:16b}].tag.miniUUIDMost int 1 run data get storage cu:resources miniUUID.Most
execute if entity @s[tag=create] store result block ~ ~ ~ Items[{Slot:16b}].tag.miniUUIDLeast int 1 run data get storage cu:resources miniUUID.Least
tag @s[tag=create] remove create
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.type int 1 run scoreboard players get @s optPistolStyle
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.bulletDamage int 1 run scoreboard players get @s optPistolDamage
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.bulletDisLmt int 1 run scoreboard players get @s optPistolBltDist
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.fireDelay int 1 run scoreboard players get @s optPistolFireDly
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.temperMax int 1 run scoreboard players get @s optPistolMaxTemp
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.fireHeat int 1 run scoreboard players get @s optPistolHeat
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.cooling int 1 run scoreboard players get @s optPistolCooling
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.coolingDelay int 1 run scoreboard players get @s optPistolCoolDly
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.bulletSpeed int 1 run scoreboard players get @s optPistolBltSped
execute store result block ~ ~ ~ Items[{Slot:16b}].tag.bulletOffset int 1 run scoreboard players get @s optPistolBltOfst

execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{type:1}}]} run data modify block ~ ~ ~ tems[{Slot:16b}].tag.display.Name set value "{\"translate\":\"item.galaxy.lasor\",\"italic\":false}"
execute if block ~ ~ ~ minecraft:barrel{Items:[{Slot:16b,tag:{type:1}}]} run data modify block ~ ~ ~ tems[{Slot:16b}].tag.CustomModelData set value 210100
