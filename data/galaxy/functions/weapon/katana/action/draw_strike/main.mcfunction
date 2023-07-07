tag @s add galaxy._tag.ThisPerformKatanaDrawStrike

data modify storage galaxy:temp +weapon.katana.action.drawStrike set from entity @s Inventory[{Slot:-106b}].tag.CustomData.galaxy.tag.draw_strike
execute store result score #weapon.katana.action.drawStrikeCooldown galaxy run data get storage galaxy:temp +weapon.katana.action.drawStrike.cooldown

execute if data storage galaxy:temp +weapon.katana.action.drawStrike{id:"galaxy.flash"} run function galaxy:weapon/katana/action/draw_strike/flash/main

execute if entity @s[tag=!galaxy._success.katana.performDrawStrike] run function #galaxy:weapon/katana/perform_draw_strike

execute if entity @s[tag=galaxy._success.katana.performDrawStrike] store result score @s galaxy.katana.drawStrikeCooldownMax run scoreboard players operation @s galaxy.katana.drawStrikeCooldown = #weapon.katana.action.drawStrikeCooldown galaxy
execute store result score #weapon.katana.action.damage galaxy run data get storage galaxy:temp +weapon.katana.action.drawStrike.damage
execute if entity @s[tag=galaxy._success.katana.performDrawStrike] if score #weapon.katana.action.damage galaxy matches 1.. if entity @e[tag=galaxy._tag.TheseKatanaActionVictim] run function galaxy:weapon/katana/action/damage/main
tag @s remove galaxy._success.katana.performDrawStrike

tag @s remove galaxy._tag.ThisPerformKatanaDrawStrike
