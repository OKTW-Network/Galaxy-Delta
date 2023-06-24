data modify storage cu:value different.input1 set from entity @s SelectedItem.tag.CustomData.galaxy.tag.type
data modify storage cu:value different.input2 set from entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.type
function cu:value/different
execute if score #value.different.result cu matches 0 run tag @s add galaxy._success.katana.storeTypeCheck
execute if entity @s[tag=galaxy._success.katana.storeTypeCheck] run function galaxy:weapon/katana/replaceitem/off_hand-katana
execute if entity @s[tag=galaxy._success.katana.storeTypeCheck] run execute at @s run function galaxy:weapon/katana/sound/action-swap_put
execute if entity @s[tag=galaxy._success.katana.storeTypeCheck] run scoreboard players set @s galaxy.katana.swapCooldown 10
tag @s[tag=galaxy._success.katana.storeTypeCheck] remove galaxy._success.katana.storeTypeCheck
